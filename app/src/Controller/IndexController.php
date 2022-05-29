<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class IndexController
{
    #[Route('/module/example-php/')]
    public function number(): Response
    {
        $number = random_int(0, 100);

        return new Response(
            '<div class="p-3"><h1>Example module (PHP)</h1></div>'
        );
    }
}
