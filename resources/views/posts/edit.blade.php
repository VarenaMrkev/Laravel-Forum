<x-layout>
    <x-card class="p-10 max-w-lg mx-auto mt-24">
        <header class="text-center">
            <h2 class="text-2xl font-bold uppercase mb-1">Upravte odpověď</h2>
        </header>

        <form method="POST" action="/posts/{{$post->id}}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-6">
                <label for="content" class="inline-block text-lg mb-2">
                    Odpověď
                </label>
                <textarea class="border border-gray-200 rounded p-2 w-full" name="content" rows="10"
                          placeholder="Zde zadejte vaši odpověď">{{$post->content}}</textarea>

                @error('content')
                <p class="text-red-500 text-xs mt-1">{{$message}}</p>
                @enderror
            </div>

            <div class="mb-6">
                <button class="bg-laravel text-white rounded py-2 px-4 hover:bg-black">
                    Upravit
                </button>

                <a href="/" class="text-black ml-4"> Zpět </a>
            </div>
        </form>
    </x-card>
</x-layout>
