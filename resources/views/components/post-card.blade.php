@props(['post', 'topic'])
<div class="bg-gray-50 border border-gray-200 rounded" >

    <div class="grid gap-4 grid-cols-12 divide-x-2 row-1  mx-10 ">
        <div class=" col-span-3 flex">
            <img class="hidden w-20 h-20 mr-6 md:block"
                 src="{{$post->profilePic ? asset('storage/'.$post->profilePic) : asset('/images/person.png')}}" alt="" />
            <div class="text-s ml-2">
                Jméno: {{$post->name}}
                <div class="text-xs">
                    Vytvořeno: {{substr($post->created_at, 10)}}</br>
                    Upraveno: {{substr($post->updated_at, 10)}}
                </div>

                <div class="grid grid-cols-2">
                    @if($topic->user_id == auth()->id())
                    <div>
                        <a href="/posts/{{$post->id}}/edit">
                            <i class="fa-solid fa-wrench"></i> Upravit
                        </a>
                    </div>
                    <div class="ml-2">
                        <form method="POST" action="/posts/{{$post->id}}">
                            @csrf
                            @method('DELETE')
                            <button class="text-red-500"><i class="fa-solid fa-trash"></i> Smazat</button>
                        </form>
                    </div>
                    @endif
                </div>
            </div>
        </div>
        <div class="col-span-9 pl-5 ">
            {{$post->content}}
        </div>
    </div>
</div>
