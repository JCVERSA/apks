package org.acra.sender;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.annotation.RequiresApi;
import defpackage.jc9;
import defpackage.ov4;
import defpackage.y45;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;
import org.acra.sender.JobSenderService;

@RequiresApi(api = 22)
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Lorg/acra/sender/JobSenderService;", "Landroid/app/job/JobService;", "()V", "onStartJob", "", "params", "Landroid/app/job/JobParameters;", "onStopJob", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class JobSenderService extends JobService {
    public static final void b(JobSenderService jobSenderService, CoreConfiguration coreConfiguration, PersistableBundle persistableBundle, JobParameters jobParameters) {
        y45.j(jobSenderService, "this$0");
        y45.j(persistableBundle, "$extras");
        y45.j(jobParameters, "$params");
        new jc9(jobSenderService, coreConfiguration).c(false, new Bundle(persistableBundle));
        jobSenderService.jobFinished(jobParameters, false);
    }

    @Override
    public boolean onStartJob(final JobParameters params) {
        y45.j(params, "params");
        final PersistableBundle extras = params.getExtras();
        y45.i(extras, "params.extras");
        final CoreConfiguration coreConfiguration = (CoreConfiguration) ov4.a.b(CoreConfiguration.class, extras.getString("acraConfig"));
        if (coreConfiguration == null) {
            return true;
        }
        new Thread(new Runnable() {
            @Override
            public final void run() {
                JobSenderService.b(this.b, coreConfiguration, extras, params);
            }
        }).start();
        return true;
    }

    @Override
    public boolean onStopJob(JobParameters params) {
        y45.j(params, "params");
        return true;
    }
}
