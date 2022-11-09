<x-layout>
    <x-card class="p-10 max-w-lg mx-auto mt-24">
        <header class="text-center">
            <h2 class="text-2xl font-bold uppercase mb-1">Nové téma</h2>
            <p class="mb-4">Zeptejte se na to co Vás zajímá</p>
        </header>

        <form method="POST" action="/posts" enctype="multipart/form-data">
            @csrf

            <div class="mb-6">
                <input type="hidden" value="{{$topic['id']}}" name="topic"/>
                <label for="content" class="inline-block text-lg mb-2">
                    Odpověď
                </label>
                <textarea class="border border-gray-200 rounded p-2 w-full" name="content" rows="10"
                          placeholder="Zde zadejte vaši odpověď">{{old('description')}}</textarea>

                @error('content')
                <p class="text-red-500 text-xs mt-1">{{$message}}</p>
                @enderror
            </div>

            <div class="mb-6">
                <button class="bg-laravel text-white rounded py-2 px-4 hover:bg-black">
                    Odeslat odpověď
                </button>

                <a href="/" class="text-black ml-4"> Zpět </a>
            </div>
        </form>
    </x-card>
</x-layout>
