<?php namespace App\Http\Controllers;

use App\Models\License;
use Common\Core\BaseController;
use Common\Database\Datasource\Datasource;
use Illuminate\Http\Request;

class LicenseController extends BaseController
{
    public function __construct(
        protected License $license,
        protected Request $request,
    ) {
    }

    public function index()
    {
        $this->authorize('index', License::class);

        $paginator = new Datasource($this->license, $this->request->all());
        return $this->success(['pagination' => $paginator->paginate()]);
    }

    public function show(int $id)
    {
        $this->authorize('show', License::class);

        $license = $this->license->findOrFail($id);

        return $this->success(['license' => $license]);
    }

    public function store()
    {
        $this->authorize('store', License::class);

        $data = $this->validate($this->request, [
            'track_id' => 'required|exists:tracks,id',
            'name' => 'nullable|string',
            'price' => 'nullable|string',
            'allow_offer' => 'nullable|boolean',
            'min_offer' => 'nullable|string',
            'enable' => 'nullable|boolean',
            'highlighted' => 'nullable|boolean',
            'is_non_exclusive' => 'nullable|boolean',
            'is_exclusive' => 'nullable|boolean',
            'has_tagged_mp3' => 'nullable|boolean',
            'has_untagged_mp3' => 'nullable|boolean',
            'has_wav' => 'nullable|boolean',
            'has_stems' => 'nullable|boolean',
            'has_pdf' => 'nullable|boolean',
            'brief' => 'nullable|string',
            'feature_list' => 'nullable|string',
            'recording' => 'nullable|boolean',
            'distribution' => 'nullable|string',
            'audio_streams' => 'nullable|string',
            'video_streams' => 'nullable|string',
            'broadcast' => 'nullable|boolean',
            'stations' => 'nullable|string',
            'profit' => 'nullable|boolean',
            'license_info' => 'nullable|string|max:65535',
        ]);

        $license = $this->license->create($data);

        return $this->success(['license' => $license]);
    }

    public function update(int $id)
    {
        $this->authorize('update', License::class);

        $data = $this->validate($this->request, [
            'track_id' => 'required|exists:tracks,id',
            'name' => 'nullable|string',
            'price' => 'nullable|string',
            'allow_offer' => 'nullable|boolean',
            'min_offer' => 'nullable|string',
            'enable' => 'nullable|boolean',
            'highlighted' => 'nullable|boolean',
            'is_non_exclusive' => 'nullable|boolean',
            'is_exclusive' => 'nullable|boolean',
            'has_tagged_mp3' => 'nullable|boolean',
            'has_untagged_mp3' => 'nullable|boolean',
            'has_wav' => 'nullable|boolean',
            'has_stems' => 'nullable|boolean',
            'has_pdf' => 'nullable|boolean',
            'brief' => 'nullable|string',
            'feature_list' => 'nullable|string',
            'recording' => 'nullable|boolean',
            'distribution' => 'nullable|string',
            'audio_streams' => 'nullable|string',
            'video_streams' => 'nullable|string',
            'broadcast' => 'nullable|boolean',
            'stations' => 'nullable|string',
            'profit' => 'nullable|boolean',
            'license_info' => 'nullable|string|max:65535',
        ]);

        $license = $this->license->findOrFail($id);

        $license->update($data);

        return $this->success(['license' => $license]);
    }

    public function destroy(string $ids)
    {
        $licenseIds = explode(',', $ids);
        $this->authorize('destroy', [License::class, $licenseIds]);

        $this->license->destroy($licenseIds);

        return $this->success();
    }
}