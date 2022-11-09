<x-layout>
    <a href="/" class="inline-block  rounded-lg bg-black text-white py-2 px-4 ml-40 my-2"><i class="fa-solid fa-arrow-left"></i>Zpět</a>
        <h1 class="bg-gray-50 border border-gray-200 rounded mx-40 pl-5 py-3 text-3xl font-bold">{{$topic->title}}</h1>

    <div class="lg:grid lg:grid-cols-1 gap-1 space-y-4 md:space-y-0 mx-40">
        @foreach($posts as $post)
        <x-post-card :post="$post" :topic="$topic"/>
        @endforeach

            <x-card class="mt-4 p-2 flex space-x-6">
                <a href="/posts/create/{{$topic->id}}">
                    <i class="fa-solid fa-pencil"></i> Odpověděť
                </a>
            </x-card>
    </div>
    <a href="/" class="inline-block  rounded-lg bg-black text-white py-2 px-4 ml-40 my-2"><i class="fa-solid fa-arrow-left"></i>Zpět</a>


</x-layout>
