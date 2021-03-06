<?php

use Illuminate\Database\Seeder;

class RoleAndUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role = Pingpong\Trusty\Role::create([
            'name' => 'Admin',
            'slug' => 'admin',  // MUST USE admin, DO NOT CHANGE!
            'description' => 'Administrator',
            'created_at' => new \Carbon\Carbon(),
            'updated_at' => new \Carbon\Carbon(),
        ]);

        $user = Pingpong\Admin\Entities\User::create([
            'name' => 'admin',
            'email' => 'admin@eadmin.co',
            'password' => 'nimda1324',
            'created_at' => new \Carbon\Carbon(),
            'updated_at' => new \Carbon\Carbon(),
        ]);

        $user->roles()->attach($role);
    }
}
