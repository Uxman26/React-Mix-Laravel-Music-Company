<?php

namespace App\Policies;

use App\Models\User;
use Common\Core\Policies\BasePolicy;

class LicensePolicy extends BasePolicy
{
    public function index(?User $user)
    {
        return $this->hasPermission($user, 'licenses.view');
    }

    public function show(?User $user)
    {
        return $this->hasPermission($user, 'licenses.view');
    }

    public function store(User $user)
    {
        return $user->hasPermission('licenses.create');
    }

    public function update(User $user)
    {
        return $user->hasPermission('licenses.update');
    }

    public function destroy(User $user)
    {
        return $user->hasPermission('licenses.delete');
    }
}
