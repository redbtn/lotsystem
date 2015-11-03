<?php

return [
    'prefix' => 'admin',
    'filter' => [
        'auth' => [
            Pingpong\Admin\Middleware\Authenticate::class,
            Pingpong\Admin\Middleware\OnlyAdmin::class
        ],
        'guest' => Pingpong\Admin\Middleware\RedirectIfAuthenticated::class,
    ],
    'views' => [
        'layout' => 'admin::layouts.master',
        'post' => 'admin::article'
    ],
    'article' => [
        'model' => 'Pingpong\Admin\Entities\Article',
        'perpage' => 10
    ],
    'page' => [
        'perpage' => 10
    ],
    'user' => [
        'model' => 'Pingpong\Admin\Entities\User',
        'perpage' => 10
    ],
    'farmer' => [
        'model' => 'Pingpong\Admin\Entities\Farmer',
        'perpage' => 10
    ], 
    'farm' => [
        'model' => 'Pingpong\Admin\Entities\Farm',
        'perpage' => 10
    ],       
    'production' => [
        'model' => 'Pingpong\Admin\Entities\Production',
        'perpage' => 10
    ],
    'cpu' => [
        'model' => 'Pingpong\Admin\Entities\Cpu',
        'perpage' => 10
    ],
    'processing' => [
        'model' => 'Pingpong\Admin\Entities\Processing',
        'perpage' => 10
    ],
    'packaging' => [
        'model' => 'Pingpong\Admin\Entities\Packaging',
        'perpage' => 10
    ],                
    'role' => [
        'model' => 'Pingpong\Admin\Entities\Role',
        'perpage' => 10
    ],
    'permission' => [
        'model' => 'Pingpong\Admin\Entities\Permission',
        'perpage' => 10
    ],
    'category' => [
        'model' => 'Pingpong\Admin\Entities\Category',
        'perpage' => 10
    ],
];
