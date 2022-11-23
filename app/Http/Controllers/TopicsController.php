<?php

namespace App\Http\Controllers;


use App\Models\Topics;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class TopicsController extends Controller
{
    /**
     * Zobrazí všechna témata.
     *
     * @return View
     */
    public function index(): View
    {

        return view('topics.index', ['topics' => Topics::select('topics.id', 'topics.title', 'topics.user_id', 'users.profilePic', 'users.name')->
        join('users', 'users.id', '=', 'topics.user_id')->
        latest('topics.created_at')->filter(request(['search']))->paginate(6)
        ]);
    }

    /**
     * Zobrazí formulář pro vytvoření nového tématu.
     *
     * @return View
     */
    public function create()
    {
        return view('topics.create');
    }

    /**
     * Zvaliduje data z formuláře a vytvoří nové téma.
     *
     * @param StoreRequest $request
     * @return RedirectResponse
     */
    public function store(Request $request)
    {
        $formFields = $request->validate([
            'title' => 'required',
            'content' => 'required'
        ]);

        $topic['title'] = $formFields['title'];
        $mytime = Carbon::now();
        $topic['updated_at'] = $mytime->toDateTimeString();
        $topic['created_at'] = $mytime->toDateTimeString();
        $topic['user_id'] = auth()->id();

        DB::insert('INSERT INTO `topics` (`title`,`user_id` , `updated_at`, `created_at`)
                            VALUES (?,? , ?, ?)', [$topic['title'], $topic['user_id'], $topic['updated_at'], $topic['created_at']]);

        $post['content'] = $formFields['content'];
        $post['updated_at'] = $mytime->toDateTimeString();
        $post['created_at'] = $mytime->toDateTimeString();
        $post['user_id'] = auth()->id();
        $post['topic_id'] = DB::table('topics')->max('id');

        DB::insert('INSERT INTO `posts` (`user_id`,`topic_id` , `content`, `updated_at`, `created_at`)
                            VALUES (?,? , ?, ?, ?)', [$post['user_id'], $post['topic_id'], $post['content'], $post['updated_at'], $post['created_at']]);


        return redirect('/')->with('message', 'Téma bylo úspěšně vytvořeno!');
    }

    /**
     * Zobrazí jedno téma a k němu vztahující se komentáře.
     *
     * @param Topics $topic
     * @return View
     */
    public function show(Topics $topic)
    {
        $posts = DB::select('SELECT `posts`.`id`, `posts`.`user_id`, `posts`.`topic_id`, `posts`.`content`,
                        `posts`.`created_at`, `posts`.`updated_at`, `users`.`name`, `users`.`profilePic` FROM `posts`
                        JOIN `users` ON `users`.`id` = `posts`.`user_id` WHERE `posts`.`topic_id` = ?', [$topic['id']]);
        return view('topics.show', ['topic' => $topic, 'posts' => $posts]);
    }
    /**
     * Odstraní téma z databáze.
     *
     * @param  Topics  $topic
     * @return RedirectResponse
     */
    public function destroy(Topics $topic)
    {
        if($topic->user_id != auth()->id()) {
                    abort(403, 'Neoprávněná akce');
                }
        $topic->delete();
        return redirect('/')->with('message', 'Téma bylo úspěšně smazáno');

    }
}
