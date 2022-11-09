@props(['topic'])

<x-card>
    <div class="flex">
        <img class="hidden w-20 h-20 mr-6 md:block"
             src="{{$topic->profilePic ? asset('storage/'.$topic->profilePic) : asset('/images/person.png')}}" alt="" />
        <div>
            <h3 class="text-2xl font-bold">
                <a href="/topic/{{$topic->id}}">{{$topic->title}}</a>
            </h3>
            <div class="text-xs  mb-4">Vytvořil/la: {{$topic->name}}</div>
            @if($topic->user_id == auth()->id())
                <div>
                    <form method="POST" action='/topics/{{$topic->id}}'>
                        @csrf
                        @method('DELETE')
                        <button class="text-red-500"><i class="fa-solid fa-trash"></i> Smazat</button>
                    </form>
                </div>
            @endif
        </div>

    </div>
</x-card>
