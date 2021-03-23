<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
   
    public function run()
    {
        $permissions = [
           'role-list',
           'role-create',
           'role-edit',
           'role-delete',
           'Hospital-list',
           'Hospital-create',
           'Hospital-edit',
           'Hospital-delete',
           'regulacao-list',
           'regulacao-create',
           'regulacao-edit',
           'regulacao-delete',
           'administrador-list',
           'administrador-create',
           'administrador-edit',
           'administrador-delete'
          ];

        



        foreach ($permissions as $permission) {
             Permission::create(['name' => $permission]);
        }
    }
}
