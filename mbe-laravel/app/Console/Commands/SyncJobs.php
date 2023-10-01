<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Controllers\JobController;

class SyncJobs extends Command
{
    protected $signature = 'sync:jobs';
    protected $description = 'Synchronize jobs from external API.';

    public function handle(JobController $jobController)
    {
        $jobController->syncJobs();
        $this->info('Jobs synchronized successfully.');
    }
}