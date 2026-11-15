package androidx.media3.exoplayer.scheduler;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PersistableBundle;
import androidx.media3.common.util.a;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import e2.f;

public final class PlatformScheduler implements f {

    private static final int f12269d;

    private final int f12270a;

    private final ComponentName f12271b;

    private final JobScheduler f12272c;

    public static final class PlatformSchedulerService extends JobService {
        @Override
        public boolean onStartJob(JobParameters jobParameters) {
            PersistableBundle extras = jobParameters.getExtras();
            int notMetRequirements = new Requirements(extras.getInt("requirements")).getNotMetRequirements(this);
            if (notMetRequirements == 0) {
                a1.r1(this, new Intent((String) a.e(extras.getString("service_action"))).setPackage((String) a.e(extras.getString("service_package"))));
                return false;
            }
            u.h("PlatformScheduler", "Requirements not met: " + notMetRequirements);
            jobFinished(jobParameters, true);
            return false;
        }

        @Override
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    static {
        f12269d = (a1.f10038a >= 26 ? 16 : 0) | 15;
    }

    public PlatformScheduler(Context context, int i10) {
        Context applicationContext = context.getApplicationContext();
        this.f12270a = i10;
        this.f12271b = new ComponentName(applicationContext, (Class<?>) PlatformSchedulerService.class);
        this.f12272c = (JobScheduler) a.e((JobScheduler) applicationContext.getSystemService("jobscheduler"));
    }

    private static JobInfo c(int i10, ComponentName componentName, Requirements requirements, String str, String str2) {
        Requirements requirementsFilterRequirements = requirements.filterRequirements(f12269d);
        if (!requirementsFilterRequirements.equals(requirements)) {
            u.h("PlatformScheduler", "Ignoring unsupported requirements: " + (requirementsFilterRequirements.getRequirements() ^ requirements.getRequirements()));
        }
        JobInfo.Builder builder = new JobInfo.Builder(i10, componentName);
        if (requirements.isUnmeteredNetworkRequired()) {
            builder.setRequiredNetworkType(2);
        } else if (requirements.isNetworkRequired()) {
            builder.setRequiredNetworkType(1);
        }
        builder.setRequiresDeviceIdle(requirements.isIdleRequired());
        builder.setRequiresCharging(requirements.isChargingRequired());
        if (a1.f10038a >= 26 && requirements.isStorageNotLowRequired()) {
            builder.setRequiresStorageNotLow(true);
        }
        builder.setPersisted(true);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("service_action", str);
        persistableBundle.putString("service_package", str2);
        persistableBundle.putInt("requirements", requirements.getRequirements());
        builder.setExtras(persistableBundle);
        return builder.build();
    }

    @Override
    public boolean a(Requirements requirements, String str, String str2) {
        return this.f12272c.schedule(c(this.f12270a, this.f12271b, requirements, str2, str)) == 1;
    }

    @Override
    public Requirements b(Requirements requirements) {
        return requirements.filterRequirements(f12269d);
    }

    @Override
    public boolean cancel() {
        this.f12272c.cancel(this.f12270a);
        return true;
    }
}
