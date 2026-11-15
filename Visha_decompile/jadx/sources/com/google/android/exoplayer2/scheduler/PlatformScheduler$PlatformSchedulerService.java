package com.google.android.exoplayer2.scheduler;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.media3.exoplayer.offline.DownloadService;
import defpackage.blb;
import defpackage.op5;
import defpackage.zi;

public final class PlatformScheduler$PlatformSchedulerService extends JobService {
    @Override
    public boolean onStartJob(JobParameters jobParameters) {
        PersistableBundle extras = jobParameters.getExtras();
        int notMetRequirements = new Requirements(extras.getInt(DownloadService.KEY_REQUIREMENTS)).getNotMetRequirements(this);
        if (notMetRequirements == 0) {
            blb.H0(this, new Intent((String) zi.e(extras.getString("service_action"))).setPackage((String) zi.e(extras.getString("service_package"))));
            return false;
        }
        op5.i("PlatformScheduler", "Requirements not met: " + notMetRequirements);
        jobFinished(jobParameters, true);
        return false;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }
}
