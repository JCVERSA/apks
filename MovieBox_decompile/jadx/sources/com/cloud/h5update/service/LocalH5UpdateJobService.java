package com.cloud.h5update.service;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import com.cloud.h5update.b;
import com.cloud.h5update.service.LocalH5UpdateJobService;
import com.cloud.h5update.utils.ExecutorUtils;
import com.cloud.h5update.utils.l;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/cloud/h5update/service/LocalH5UpdateJobService;", "Landroid/app/job/JobService;", "<init>", "()V", "Landroid/app/job/JobParameters;", "jobParameters", "", "onStartJob", "(Landroid/app/job/JobParameters;)Z", "onStopJob", "a", "apph5update_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalH5UpdateJobService extends JobService {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            Intrinsics.h(context, "context");
            Object systemService = context.getSystemService("jobscheduler");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.job.JobScheduler");
            }
            ((JobScheduler) systemService).schedule(new JobInfo.Builder(1001, new ComponentName(context, (Class<?>) LocalH5UpdateJobService.class)).setRequiredNetworkType(2).setRequiresCharging(true).build());
        }

        private Companion() {
        }
    }

    public static final void b() {
        l.f20693a.e(b.f20636g.a());
    }

    @Override
    public boolean onStartJob(JobParameters jobParameters) {
        Intrinsics.h(jobParameters, "jobParameters");
        ExecutorUtils.g().execute(new Runnable() {
            @Override
            public final void run() {
                LocalH5UpdateJobService.b();
            }
        });
        return false;
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        Intrinsics.h(jobParameters, "jobParameters");
        return false;
    }
}
