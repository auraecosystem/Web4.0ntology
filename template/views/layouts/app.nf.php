<?php

declare(strict_types=1);

use Web4\Foundation\Application;
use Web4\Routing\Router;
use Web4\Security\SecurityServiceProvider;
use Web4\Database\DatabaseServiceProvider;
use Web4\Cache\CacheServiceProvider;
use Web4\AI\AIServiceProvider;
use Web4\Blockchain\BlockchainServiceProvider;
use Web4\Realtime\WebSocketServiceProvider;

return Application::create()
    ->name('Web4')
    ->version('1.0.0')

    ->environment(env('APP_ENV', 'production'))
    ->debug((bool) env('APP_DEBUG', false))
    ->timezone('UTC')
    ->locale('en')

    ->withRouting(function (Router $router) {

        $router->load(base_path('routes/web.php'));
        $router->load(base_path('routes/api.php'));
        $router->load(base_path('routes/console.php'));

    })

    ->withProviders([

        DatabaseServiceProvider::class,
        CacheServiceProvider::class,
        SecurityServiceProvider::class,
        AIServiceProvider::class,
        BlockchainServiceProvider::class,
        WebSocketServiceProvider::class,

    ])

    ->withMiddleware(function ($middleware) {

        $middleware->web();
        $middleware->api();
        $middleware->csrf();
        $middleware->auth();
        $middleware->rateLimit();

    })

    ->boot();
