<?php

namespace App\Services;

use App\User as UserModel;

class User
{
  public function getAllUsers($listener)
  {
    $users = UserModel::all();

    return $listener->showAllUsers(compact('users'));
  }

  public function showUser($listener, $userId)
  {
    $user = UserModel::find($userId);

    return $listener->showUser(compact('user'));
  }
}