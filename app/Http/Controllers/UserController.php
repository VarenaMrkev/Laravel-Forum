<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\View\View;

class UserController extends Controller
{
    /**
     * Zobrazí formulář pro registraci uživatele.
     *
     * @return View
     */
    public function create() {
        return view('users.register');
    }

    /**
     * Zvaliduje data z formuláře, vytvoří nového uživatele a rovnou ho přihlásí.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function store(Request $request) {
        $formFields = $request->validate([
            'name' => ['required', 'min:3', Rule::unique('users', 'name')],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => 'required|confirmed|min:6'
        ]);

        if($request->hasFile('profilePic')){
            $formFields['profilePic'] = $request->file('profilePic')->store('profilePics', 'public');
        }

        // Hashování hesla
        $formFields['password'] = bcrypt($formFields['password']);
        $user = User::create($formFields);

        auth()->login($user);

        return redirect('/')->with('message', 'Uživatel byl vytvoření a přihlášen');
    }

    /**
     * Zobrazí formulář pro vytvoření nového tématu.
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function logout(Request $request) {
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message', 'Byli jste odhlášení!');

    }

    /**
     * Zobrazí formulář pro přihlášení
     *
     * @return View
     */
    public function login() {
        return view('users.login');
    }

    /**
     * Oběří přihlašovaného uživatele
     *
     * @param Request $request
     * @return RedirectResponse
     */
    public function authenticate(Request $request) {
        $formFields = $request->validate([
            'email' => ['required', 'email'],
            'password' => 'required'
        ]);

        if(auth()->attempt($formFields)) {
            $request->session()->regenerate();

            return redirect('/')->with('message', 'Nyní jste přihlášeni!');
        }

        return back()->withErrors(['email' => 'Invalid Credentials'])->onlyInput('email');
    }
}
