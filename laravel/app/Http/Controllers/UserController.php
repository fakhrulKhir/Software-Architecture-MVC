<?php

namespace App\Http\Controllers;

use App\User;
use App\Services\User as UserService;

class UserController extends Controller
{
  public function index(UserService $service)
  {
    $users = User::all();

    return view('users', compact('users'));

    //return $service->getAllUsers($this);
  }

  public function show($userId, UserService $service)
  {
    $user = User::find($userId);

    return view('user', compact('user'));

    //return $service->showUser($this, $userId);
  }

  public function showAllUsers(array $data)
  {
    return view('users', $data);
  }

  public function showUser(array $data)
  {
    return view('user', $data);
  }
}