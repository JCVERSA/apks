package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import com.google.android.datatransport.runtime.o;
import com.google.android.datatransport.runtime.t;
import com.hisavana.common.tracking.TrackingKey;

public class JobInfoSchedulerService extends JobService {
    public void b(JobParameters jobParameters) {
        jobFinished(jobParameters, false);
    }

    @Override
    public boolean onStartJob(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i10 = jobParameters.getExtras().getInt(TrackingKey.PRIORITY);
        int i11 = jobParameters.getExtras().getInt("attemptNumber");
        t.f(getApplicationContext());
        o.a aVarD = o.a().b(string).d(f9.a.b(i10));
        if (string2 != null) {
            aVarD.c(Base64.decode(string2, 0));
        }
        t.c().e().v(aVarD.a(), i11, new Runnable() {
            @Override
            public final void run() {
                this.f15619a.b(jobParameters);
            }
        });
        return true;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
