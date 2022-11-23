<?php

namespace App\Http\Controllers;

use App\Models\Posts;
use App\Models\Topics;
use Carbon\Carbon;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostsController extends Controller
{

    /**
     * Zobrazí formulář pro vytvoření nové odpovědi.
     *
     * @return View
     */
    public function create(Topics $topic)
    {
        return view('posts.create', ['topic' =>$topic]);
    }

    /**
     * Zvaliduje data z formuláře a vytvoří novou odpověď.
     *
     * @param  StoreRequest $request
     * @return RedirectResponse
     */
    public function store(Request $request)
    {
        $formFields = $request->validate([
            'content' => 'required',
            'topic' => 'required'
        ]);



        $post['content'] = $formFields['content'];
        $mytime = Carbon::now();
        $post['updated_at'] = $mytime->toDateTimeString();
        $post['created_at'] = $mytime->toDateTimeString();
        $post['user_id'] = auth()->id();
        $post['topic_id'] = DB::table('topics')->max('id');

        DB::insert('INSERT INTO `posts` (`user_id`,`topic_id` , `content`, `updated_at`, `created_at`)
                            VALUES (?,? , ?, ?, ?)', [$post['user_id'], $post['topic_id'], $post['content'], $post['updated_at'], $post['created_at']]);


        return redirect('/topic/'.$post['topic_id'])->with('message', 'Odeslali jste odpověď!');
    }

    /**
     * Zobraz formulář pro editaci odpovědí a předá danému pohledu načtenou odpověď.
     *
     * @param  Article $article
     * @return View
     */
    public function edit(Posts $post) {
        return view('posts.edit', ['post' => $post]);
    }

    /**
     * Zvaliduj odeslaná data přes formulář a uprav odpověď.
     *
     * @param  UpdateRequest $request
     * @param  Posts $post
     * @return RedirectResponse
     */
    public function update(Request $request, Posts $post)
    {
        if($post->user_id != auth()->id()) {
            abort(403, 'Neoprávněná akce');
        }

        $formFields = $request->validate([
            'content' => 'required',
        ]);

        if($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $post->update($formFields);

        return redirect('/topic/'.$post['topic_id'])->with('message', 'Odpověď byla úspěšně změněna');;
    }

    /**
     * Odstraní odpověď z databáze.
     *
     * @param  Posts  $post
     * @return RedirectResponse
     */
    public function destroy(Posts $post)
    {
        if($post->user_id != auth()->id()) {
                    abort(403, 'Neoprávněná akce');
                }
        $post->delete();
        return redirect('/topic/'.$post['topic_id'])->with('message', 'Odpověď byla úspěšně smazána');

    }
}
