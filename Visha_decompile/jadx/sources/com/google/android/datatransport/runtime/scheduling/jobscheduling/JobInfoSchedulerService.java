package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import defpackage.a9b;
import defpackage.j9b;
import defpackage.mf8;

@RequiresApi(api = 21)
public class JobInfoSchedulerService extends JobService {
    public final void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i = jobParameters.getExtras().getInt("priority");
        int i2 = jobParameters.getExtras().getInt("attemptNumber");
        j9b.f(getApplicationContext());
        a9b.a aVarD = a9b.a().b(string).d(mf8.b(i));
        if (string2 != null) {
            aVarD.c(Base64.decode(string2, 0));
        }
        j9b.c().e().v(aVarD.a(), i2, new Runnable() {
            @Override
            public final void run() {
                this.b.b(jobParameters);
            }
        });
        return true;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
