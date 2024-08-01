<?php

namespace App\Http\Controllers;

use Common\Core\BaseController;
use ZipArchive;
use App\Models\Track;
use Illuminate\Http\Request;

class DownloadController extends BaseController
{
    public function __invoke(Request $request, $id)
    {
        $track = Track::findOrFail($id);

        $fileTypes = [
            'mp3' => $track->mp3_file,
            'wav' => $track->wav_file,
            'pdf' => $track->pdf_file,
            'zip' => $track->zip_file,
        ];

        $permissions = $request->user()->permissions->pluck('name');
        $allowedFiles = collect($fileTypes)->filter(function ($filePath, $type) use ($permissions) {
            return $permissions->contains("files.download.{$type}");
        });

        if ($allowedFiles->isNotEmpty()) {
            $zipPath = storage_path("app/{$track->name}.zip");
            $zip = new ZipArchive;
            if ($zip->open($zipPath, ZipArchive::CREATE | ZipArchive::OVERWRITE) === true) {
                foreach ($allowedFiles as $type => $filePath) {
                    if ($filePath) {
                        $zip->addFile($filePath, "{$track->name}.{$type}");
                    }
                }
                $zip->close();
            }

            return response()->download($zipPath)->deleteFileAfterSend(true);
        } else {
            return response()->json(['error' => 'You do not have permission to download any files'], 403);
        }
    }
}
