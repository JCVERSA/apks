package com.transsion.al.ka;

import android.app.job.JobParameters;
import android.app.job.JobService;
import com.tn.lib.thread.ThreadPool;

public class AppLockJobService extends JobService {
    private static final String TAG = "AppLockJobService";
    private int kJobId = 2;

    public void lambda$onStartJob$0() {
        JobUtils.startAppLockJobService(this);
    }

    public void lambda$onStopJob$1() {
        JobUtils.startAppLockJobService(this);
    }

    @Override
    public boolean onStartJob(JobParameters jobParameters) {
        ThreadPool.e().d(new Runnable() {
            @Override
            public final void run() {
                this.f41343a.lambda$onStartJob$0();
            }
        });
        return false;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        ThreadPool.e().d(new Runnable() {
            @Override
            public final void run() {
                this.f41344a.lambda$onStopJob$1();
            }
        });
        return true;
    }
}
