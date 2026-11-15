package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.WorkerParameters;
import androidx.work.impl.d0;
import androidx.work.impl.u;
import androidx.work.impl.v;
import j4.m;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class SystemJobService extends JobService implements androidx.work.impl.e {

    private static final String f15235d = androidx.work.j.i("SystemJobService");

    private d0 f15236a;

    private final Map f15237b = new HashMap();

    private final v f15238c = new v();

    static class a {
        static String[] a(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }

        static Uri[] b(JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }
    }

    static class b {
        static Network a(JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    private static m a(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new m(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override
    public void l(m mVar, boolean z10) {
        JobParameters jobParameters;
        androidx.work.j.e().a(f15235d, mVar.b() + " executed on JobScheduler");
        synchronized (this.f15237b) {
            jobParameters = (JobParameters) this.f15237b.remove(mVar);
        }
        this.f15238c.b(mVar);
        if (jobParameters != null) {
            jobFinished(jobParameters, z10);
        }
    }

    @Override
    public void onCreate() {
        super.onCreate();
        try {
            d0 d0VarO = d0.o(getApplicationContext());
            this.f15236a = d0VarO;
            d0VarO.q().g(this);
        } catch (IllegalStateException unused) {
            if (!Application.class.equals(getApplication().getClass())) {
                throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().");
            }
            androidx.work.j.e().k(f15235d, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        d0 d0Var = this.f15236a;
        if (d0Var != null) {
            d0Var.q().n(this);
        }
    }

    @Override
    public boolean onStartJob(JobParameters jobParameters) {
        WorkerParameters.a aVar;
        if (this.f15236a == null) {
            androidx.work.j.e().a(f15235d, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        m mVarA = a(jobParameters);
        if (mVarA == null) {
            androidx.work.j.e().c(f15235d, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.f15237b) {
            try {
                if (this.f15237b.containsKey(mVarA)) {
                    androidx.work.j.e().a(f15235d, "Job is already being executed by SystemJobService: " + mVarA);
                    return false;
                }
                androidx.work.j.e().a(f15235d, "onStartJob for " + mVarA);
                this.f15237b.put(mVarA, jobParameters);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 24) {
                    aVar = new WorkerParameters.a();
                    if (a.b(jobParameters) != null) {
                        aVar.f15077b = Arrays.asList(a.b(jobParameters));
                    }
                    if (a.a(jobParameters) != null) {
                        aVar.f15076a = Arrays.asList(a.a(jobParameters));
                    }
                    if (i10 >= 28) {
                        aVar.f15078c = b.a(jobParameters);
                    }
                } else {
                    aVar = null;
                }
                this.f15236a.A(this.f15238c.d(mVarA), aVar);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean onStopJob(JobParameters jobParameters) {
        if (this.f15236a == null) {
            androidx.work.j.e().a(f15235d, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        m mVarA = a(jobParameters);
        if (mVarA == null) {
            androidx.work.j.e().c(f15235d, "WorkSpec id not found!");
            return false;
        }
        androidx.work.j.e().a(f15235d, "onStopJob for " + mVarA);
        synchronized (this.f15237b) {
            this.f15237b.remove(mVarA);
        }
        u uVarB = this.f15238c.b(mVarA);
        if (uVarB != null) {
            this.f15236a.C(uVarB);
        }
        return !this.f15236a.q().j(mVarA.b());
    }
}
