<x-layout>

    @if (!Auth::check())
        @include('partials._hero')
    @endif
    <div class="grid grid-cols-3 row-1 mx-40 my-10">
        <div class="mt-5">
            <a href="/topics/create" class="rounded-lg bg-black text-white py-4 px-8">Přidej téma</a>
        </div>
        <div class="col-span-2">
            @include('partials._search')
        </div>
    </div>


    <div class="lg:grid lg:grid-cols-1 gap-4 space-y-4 md:space-y-0 mx-40">
        @unless(count($topics) == 0)
            @foreach($topics as $topic)
                <x-topic-card :topic="$topic" />
            @endforeach

        @else
            <p>Nenalezena žádná témata</p>
        @endunless
    </div>

    <div class="mt-6 p-4">
        {{$topics->links()}}
    </div>
</x-layout>

