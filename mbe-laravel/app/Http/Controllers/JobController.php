<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\Job;

class JobController extends Controller
{
    public function syncJobs()
    {
        // Ustawienia API - znalazłem taki URL przyglądając się skąd serwis pobiera dane. okazało się, że jest API.
        $apiUrl = 'https://apply.workable.com/api/v3/accounts/testronic/jobs';
    
        $nextPage = null;
    
        do {
            $response = Http::post($apiUrl, [
                'token' => $nextPage,
            ]);
            if ($response->successful()) {
                $data = $response->json();
                if (isset($data['results'])) {
                    $jobs = $data['results'];
                    $this->saveJobs($jobs);
                    $nextPage = isset($data['nextPage']) ? $data['nextPage'] : null;
                } else {
                    break;
                }
            } else {
                break;
            }
        } while ($nextPage);
    
        return response()->json(['message' => 'Synchronization completed.']);
    }
    
    private function saveJobs($jobs)
    {
        foreach ($jobs as $jobData) {
            $existingJob = Job::where('id', $jobData['id'])->first();
            if (!$existingJob) {
                $newJob = new Job();
                $newJob->id = $jobData['id'];
                $newJob->shortcode = $jobData['shortcode'];
                $newJob->title = $jobData['title'];
                $newJob->remote = $jobData['remote'];
                $newJob->country = $jobData['location']['country'];
                $newJob->countryCode = $jobData['location']['countryCode'];
                $newJob->city = $jobData['location']['city'];
                $newJob->region = $jobData['location']['region'];
                $newJob->locations = json_encode($jobData['locations']);
                $newJob->state = $jobData['state'];
                $newJob->isInternal = $jobData['isInternal'];
                $newJob->code = $jobData['code'];
                $newJob->published = new \DateTime($jobData['published']);
                $newJob->type = isset($jobData['type']) ? $jobData['type'] : '';
                $newJob->language = $jobData['language'];
                $newJob->department = json_encode($jobData['department']);
                $newJob->accountUid = $jobData['accountUid'];
                $newJob->approvalStatus = $jobData['approvalStatus'];
                $newJob->workplace = $jobData['workplace'];
                $newJob->save();
            }
        }
    }

    public function getJobs(Request $request)
    {
        $requestData = $request->json()->all();

        $query = Job::query();

        if (isset($requestData['country'])) {
            $query->where('country', $requestData['country']);
        }
    
        if (isset($requestData['region'])) {
            $query->where('region', $requestData['region']);
        }
    
        if (isset($requestData['city'])) {
            $query->where('city', $requestData['city']);
        }

        $jobs = $query->get();

        return response()->json(['jobs' => $jobs]);
    }

}
