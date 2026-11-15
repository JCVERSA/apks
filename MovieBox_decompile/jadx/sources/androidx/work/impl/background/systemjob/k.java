package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d0;
import androidx.work.impl.s;
import j4.l;
import j4.m;
import j4.u;
import j4.v;
import j4.x;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class k implements s {

    private static final String f15242e = androidx.work.j.i("SystemJobScheduler");

    private final Context f15243a;

    private final JobScheduler f15244b;

    private final d0 f15245c;

    private final j f15246d;

    public k(Context context, d0 d0Var) {
        this(context, d0Var, (JobScheduler) context.getSystemService("jobscheduler"), new j(context));
    }

    public static void a(Context context) {
        List listG;
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (listG = g(context, jobScheduler)) == null || listG.isEmpty()) {
            return;
        }
        Iterator it = listG.iterator();
        while (it.hasNext()) {
            d(jobScheduler, ((JobInfo) it.next()).getId());
        }
    }

    private static void d(JobScheduler jobScheduler, int i10) {
        try {
            jobScheduler.cancel(i10);
        } catch (Throwable th2) {
            androidx.work.j.e().d(f15242e, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i10)), th2);
        }
    }

    private static List f(Context context, JobScheduler jobScheduler, String str) {
        List<JobInfo> listG = g(context, jobScheduler);
        if (listG == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(2);
        for (JobInfo jobInfo : listG) {
            m mVarH = h(jobInfo);
            if (mVarH != null && str.equals(mVarH.b())) {
                arrayList.add(Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    private static List g(Context context, JobScheduler jobScheduler) {
        List<JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (Throwable th2) {
            androidx.work.j.e().d(f15242e, "getAllPendingJobs() is not reliable on this device.", th2);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(allPendingJobs.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    private static m h(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new m(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (NullPointerException unused) {
            return null;
        }
    }

    public static boolean i(Context context, d0 d0Var) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        List<JobInfo> listG = g(context, jobScheduler);
        List listE = d0Var.t().k0().e();
        boolean z10 = false;
        HashSet hashSet = new HashSet(listG != null ? listG.size() : 0);
        if (listG != null && !listG.isEmpty()) {
            for (JobInfo jobInfo : listG) {
                m mVarH = h(jobInfo);
                if (mVarH != null) {
                    hashSet.add(mVarH.b());
                } else {
                    d(jobScheduler, jobInfo.getId());
                }
            }
        }
        Iterator it = listE.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains((String) it.next())) {
                androidx.work.j.e().a(f15242e, "Reconciling jobs");
                z10 = true;
                break;
            }
        }
        if (z10) {
            WorkDatabase workDatabaseT = d0Var.t();
            workDatabaseT.k();
            try {
                v vVarN0 = workDatabaseT.n0();
                Iterator it2 = listE.iterator();
                while (it2.hasNext()) {
                    vVarN0.r((String) it2.next(), -1L);
                }
                workDatabaseT.e0();
            } finally {
                workDatabaseT.t();
            }
        }
        return z10;
    }

    @Override
    public void b(String str) {
        List listF = f(this.f15243a, this.f15244b, str);
        if (listF == null || listF.isEmpty()) {
            return;
        }
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            d(this.f15244b, ((Integer) it.next()).intValue());
        }
        this.f15245c.t().k0().g(str);
    }

    @Override
    public void c(u... uVarArr) {
        List listF;
        WorkDatabase workDatabaseT = this.f15245c.t();
        androidx.work.impl.utils.i iVar = new androidx.work.impl.utils.i(workDatabaseT);
        for (u uVar : uVarArr) {
            workDatabaseT.k();
            try {
                u uVarJ = workDatabaseT.n0().j(uVar.f62987a);
                if (uVarJ == null) {
                    androidx.work.j.e().k(f15242e, "Skipping scheduling " + uVar.f62987a + " because it's no longer in the DB");
                    workDatabaseT.e0();
                } else if (uVarJ.f62988b != WorkInfo.State.ENQUEUED) {
                    androidx.work.j.e().k(f15242e, "Skipping scheduling " + uVar.f62987a + " because it is no longer enqueued");
                    workDatabaseT.e0();
                } else {
                    m mVarA = x.a(uVar);
                    j4.i iVarA = workDatabaseT.k0().a(mVarA);
                    int iE = iVarA != null ? iVarA.f62960c : iVar.e(this.f15245c.m().i(), this.f15245c.m().g());
                    if (iVarA == null) {
                        this.f15245c.t().k0().b(l.a(mVarA, iE));
                    }
                    j(uVar, iE);
                    if (Build.VERSION.SDK_INT == 23 && (listF = f(this.f15243a, this.f15244b, uVar.f62987a)) != null) {
                        int iIndexOf = listF.indexOf(Integer.valueOf(iE));
                        if (iIndexOf >= 0) {
                            listF.remove(iIndexOf);
                        }
                        j(uVar, !listF.isEmpty() ? ((Integer) listF.get(0)).intValue() : iVar.e(this.f15245c.m().i(), this.f15245c.m().g()));
                    }
                    workDatabaseT.e0();
                }
                workDatabaseT.t();
            } catch (Throwable th2) {
                workDatabaseT.t();
                throw th2;
            }
        }
    }

    @Override
    public boolean e() {
        return true;
    }

    public void j(u uVar, int i10) {
        JobInfo jobInfoA = this.f15246d.a(uVar, i10);
        androidx.work.j jVarE = androidx.work.j.e();
        String str = f15242e;
        jVarE.a(str, "Scheduling work ID " + uVar.f62987a + "Job ID " + i10);
        try {
            if (this.f15244b.schedule(jobInfoA) == 0) {
                androidx.work.j.e().k(str, "Unable to schedule work ID " + uVar.f62987a);
                if (uVar.f63003q && uVar.f63004r == OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    uVar.f63003q = false;
                    androidx.work.j.e().a(str, String.format("Scheduling a non-expedited job (work ID %s)", uVar.f62987a));
                    j(uVar, i10);
                }
            }
        } catch (IllegalStateException e10) {
            List listG = g(this.f15243a, this.f15244b);
            String str2 = String.format(Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", Integer.valueOf(listG != null ? listG.size() : 0), Integer.valueOf(this.f15245c.t().n0().e().size()), Integer.valueOf(this.f15245c.m().h()));
            androidx.work.j.e().c(f15242e, str2);
            IllegalStateException illegalStateException = new IllegalStateException(str2, e10);
            androidx.core.util.a aVarL = this.f15245c.m().l();
            if (aVarL == null) {
                throw illegalStateException;
            }
            aVarL.accept(illegalStateException);
        } catch (Throwable th2) {
            androidx.work.j.e().d(f15242e, "Unable to schedule " + uVar, th2);
        }
    }

    public k(Context context, d0 d0Var, JobScheduler jobScheduler, j jVar) {
        this.f15243a = context;
        this.f15245c = d0Var;
        this.f15244b = jobScheduler;
        this.f15246d = jVar;
    }
}
