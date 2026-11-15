package b9;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.hisavana.common.tracking.TrackingKey;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

public class b implements u {

    private final Context f15616a;

    private final c9.d f15617b;

    private final SchedulerConfig f15618c;

    public b(Context context, c9.d dVar, SchedulerConfig schedulerConfig) {
        this.f15616a = context;
        this.f15617b = dVar;
        this.f15618c = schedulerConfig;
    }

    private boolean d(JobScheduler jobScheduler, int i10, int i11) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i12 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i10) {
                return i12 >= i11;
            }
        }
        return false;
    }

    @Override
    public void a(com.google.android.datatransport.runtime.o oVar, int i10) {
        b(oVar, i10, false);
    }

    @Override
    public void b(com.google.android.datatransport.runtime.o oVar, int i10, boolean z10) {
        ComponentName componentName = new ComponentName(this.f15616a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.f15616a.getSystemService("jobscheduler");
        int iC = c(oVar);
        if (!z10 && d(jobScheduler, iC, i10)) {
            y8.a.b("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", oVar);
            return;
        }
        long jO = this.f15617b.O(oVar);
        JobInfo.Builder builderC = this.f15618c.c(new JobInfo.Builder(iC, componentName), oVar.d(), jO, i10);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i10);
        persistableBundle.putString("backendName", oVar.b());
        persistableBundle.putInt(TrackingKey.PRIORITY, f9.a.a(oVar.d()));
        if (oVar.c() != null) {
            persistableBundle.putString("extras", Base64.encodeToString(oVar.c(), 0));
        }
        builderC.setExtras(persistableBundle);
        y8.a.c("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", oVar, Integer.valueOf(iC), Long.valueOf(this.f15618c.g(oVar.d(), jO, i10)), Long.valueOf(jO), Integer.valueOf(i10));
        jobScheduler.schedule(builderC.build());
    }

    int c(com.google.android.datatransport.runtime.o oVar) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.f15616a.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(oVar.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(f9.a.a(oVar.d())).array());
        if (oVar.c() != null) {
            adler32.update(oVar.c());
        }
        return (int) adler32.getValue();
    }
}
