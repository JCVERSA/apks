package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import org.acra.config.CoreConfiguration;
import org.acra.sender.JobSenderService;

public class g42 implements gc9 {
    public final Context a;
    public final CoreConfiguration b;

    public g42(Context context, CoreConfiguration coreConfiguration) {
        y45.j(context, "context");
        y45.j(coreConfiguration, "config");
        this.a = context;
        this.b = coreConfiguration;
    }

    @Override
    public void a(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString("acraConfig", ov4.a.d(this.b));
        bundle.putBoolean("onlySendSilentReports", z);
        b(bundle);
        jc9 jc9Var = new jc9(this.a, this.b);
        if (!jc9Var.b(false).isEmpty()) {
            Object systemService = this.a.getSystemService("jobscheduler");
            y45.h(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
            JobInfo.Builder extras = new JobInfo.Builder(0, new ComponentName(this.a, (Class<?>) JobSenderService.class)).setExtras(tn0.c(bundle));
            y45.i(extras, "builder");
            c(extras);
            ((JobScheduler) systemService).schedule(extras.build());
        }
        if (jc9Var.b(true).isEmpty()) {
            return;
        }
        jc9Var.c(true, bundle);
    }

    public final void b(Bundle bundle) {
        y45.j(bundle, "extras");
    }

    public void c(JobInfo.Builder builder) {
        y45.j(builder, "job");
        builder.setOverrideDeadline(0L);
    }
}
