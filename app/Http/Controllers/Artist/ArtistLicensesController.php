<?php

namespace App\Http\Controllers\Artist;

use App\Models\Artist;
use Common\Core\BaseController;
use Illuminate\Http\Request;

class ArtistLicensesController extends BaseController
{
    /**
     * @var Request
     */
    private $request;

    public function __construct(Request $request)
    {
        $this->request = $request;
    }

    public function index(Artist $artist)
    {
        $userId = $this->request->get('userId');
        $this->authorize('index', [$artist, $userId]);

        // Retrieve licenses related to the artist
        $licenses = $artist->licenses()->paginate(request('perPage') ?? 25);

        return $this->success(['licenses' => $licenses]);
    }
}
