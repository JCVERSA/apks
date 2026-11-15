package defpackage;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

public class l95 implements fpc {
    public final Context a;
    public final ge3 b;
    public final SchedulerConfig c;

    public l95(Context context, ge3 ge3Var, SchedulerConfig schedulerConfig) {
        this.a = context;
        this.b = ge3Var;
        this.c = schedulerConfig;
    }

    @Override
    public void a(a9b a9bVar, int i) {
        b(a9bVar, i, false);
    }

    @Override
    public void b(a9b a9bVar, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.a.getSystemService("jobscheduler");
        int iC = c(a9bVar);
        if (!z && d(jobScheduler, iC, i)) {
            vq5.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", a9bVar);
            return;
        }
        long jR = this.b.r(a9bVar);
        JobInfo.Builder builderC = this.c.c(new JobInfo.Builder(iC, componentName), a9bVar.d(), jR, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", a9bVar.b());
        persistableBundle.putInt("priority", mf8.a(a9bVar.d()));
        if (a9bVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(a9bVar.c(), 0));
        }
        builderC.setExtras(persistableBundle);
        vq5.b("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", a9bVar, Integer.valueOf(iC), Long.valueOf(this.c.g(a9bVar.d(), jR, i)), Long.valueOf(jR), Integer.valueOf(i));
        jobScheduler.schedule(builderC.build());
    }

    public int c(a9b a9bVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(a9bVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(mf8.a(a9bVar.d())).array());
        if (a9bVar.c() != null) {
            adler32.update(a9bVar.c());
        }
        return (int) adler32.getValue();
    }

    public final boolean d(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                return i3 >= i2;
            }
        }
        return false;
    }
}
