<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $clients = Client::latest()->get();
        return view('clients.index', compact('clients'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('clients.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();
        $client = Client::create($input);
        // if($request->hasFile('avatar') && $request->file('avatar')->isValid()){
        //     $client->addMediaFromRequest('avatar')->toMediaCollection('avatar');          
        // }
        if ($request->hasFile('avatar')) {
            $client->addMediaFromRequest('avatar')
                 ->toMediaCollection('avatar');
        }
        return redirect()->route('client.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $client = Client::find($id);

        return view('clients.edit', compact('client'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
       

        $client = Client::find($id);
        $client->name = $request->name;
        $client->email = $request->email;
        $client->save();

       // if ($client) {
            if ($request->hasFile('avatar')) {
                $client->clearMediaCollection('avatar');
                $client->addMediaFromRequest('avatar')->toMediaCollection('avatar');
            }
      //  }

        session()->flash('success', ' Update successfully');

        return redirect()->route('client.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $client = Client::find($id);
        $client->delete();

        session()->flash('success', ' Delete successfully');

        return redirect()->route('client.index');
    }
}
