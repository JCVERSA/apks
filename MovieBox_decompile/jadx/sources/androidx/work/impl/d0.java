package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Build;
import androidx.p009lifecycle.LiveData;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.R$bool;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.utils.CancelWorkRunnable;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.LiveDataUtils;
import androidx.work.impl.utils.StartWorkRunnable;
import androidx.work.impl.utils.StopWorkRunnable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public class d0 extends WorkManager {

    private static final String f15252k = androidx.work.j.i("WorkManagerImpl");

    private static d0 f15253l = null;

    private static d0 f15254m = null;

    private static final Object f15255n = new Object();

    private Context f15256a;

    private androidx.work.a f15257b;

    private WorkDatabase f15258c;

    private k4.c f15259d;

    private List f15260e;

    private Processor f15261f;

    private androidx.work.impl.utils.o f15262g;

    private boolean f15263h;

    private BroadcastReceiver.PendingResult f15264i;

    private final i4.n f15265j;

    class a implements l.a {
        a() {
        }

        @Override
        public WorkInfo apply(List list) {
            if (list == null || list.size() <= 0) {
                return null;
            }
            return ((j4.u.c) list.get(0)).a();
        }
    }

    static class b {
        static boolean a(Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    public d0(Context context, androidx.work.a aVar, k4.c cVar) {
        this(context, aVar, cVar, context.getResources().getBoolean(R$bool.workmanager_test_configuration));
    }

    public static void h(Context context, androidx.work.a aVar) {
        synchronized (f15255n) {
            try {
                d0 d0Var = f15253l;
                if (d0Var != null && f15254m != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                if (d0Var == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (f15254m == null) {
                        f15254m = new d0(applicationContext, aVar, new k4.d(aVar.m()));
                    }
                    f15253l = f15254m;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static d0 n() {
        synchronized (f15255n) {
            try {
                d0 d0Var = f15253l;
                if (d0Var != null) {
                    return d0Var;
                }
                return f15254m;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static d0 o(Context context) {
        d0 d0VarN;
        synchronized (f15255n) {
            try {
                d0VarN = n();
                if (d0VarN == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (!(applicationContext instanceof androidx.work.a.c)) {
                        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                    }
                    h(applicationContext, ((androidx.work.a.c) applicationContext).a());
                    d0VarN = o(applicationContext);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return d0VarN;
    }

    private void v(Context context, androidx.work.a aVar, k4.c cVar, WorkDatabase workDatabase, List list, Processor processor) {
        Context applicationContext = context.getApplicationContext();
        this.f15256a = applicationContext;
        this.f15257b = aVar;
        this.f15259d = cVar;
        this.f15258c = workDatabase;
        this.f15260e = list;
        this.f15261f = processor;
        this.f15262g = new androidx.work.impl.utils.o(workDatabase);
        this.f15263h = false;
        if (Build.VERSION.SDK_INT >= 24 && b.a(applicationContext)) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        this.f15259d.c(new ForceStopRunnable(applicationContext, this));
    }

    public void A(u uVar, WorkerParameters.a aVar) {
        this.f15259d.c(new StartWorkRunnable(this, uVar, aVar));
    }

    public void B(j4.m mVar) {
        this.f15259d.c(new StopWorkRunnable(this, new u(mVar), true));
    }

    public void C(u uVar) {
        this.f15259d.c(new StopWorkRunnable(this, uVar, false));
    }

    @Override
    public androidx.work.p b(String str, ExistingWorkPolicy existingWorkPolicy, List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
        }
        return new w(this, str, existingWorkPolicy, list);
    }

    @Override
    public androidx.work.l d(List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        return new w(this, list).a();
    }

    @Override
    public androidx.work.l e(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, androidx.work.m mVar) {
        return existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.UPDATE ? WorkerUpdater.c(this, str, mVar) : k(str, existingPeriodicWorkPolicy, mVar).a();
    }

    @Override
    public LiveData g(UUID uuid) {
        return LiveDataUtils.a(this.f15258c.n0().B(Collections.singletonList(uuid.toString())), new a(), this.f15259d);
    }

    public androidx.work.l i(UUID uuid) {
        CancelWorkRunnable cancelWorkRunnableForId = CancelWorkRunnable.forId(uuid, this);
        this.f15259d.c(cancelWorkRunnableForId);
        return cancelWorkRunnableForId.getOperation();
    }

    public List j(Context context, androidx.work.a aVar, i4.n nVar) {
        return Arrays.asList(t.a(context, this), new androidx.work.impl.background.greedy.a(context, aVar, nVar, this));
    }

    public w k(String str, ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, androidx.work.m mVar) {
        return new w(this, str, existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.KEEP ? ExistingWorkPolicy.KEEP : ExistingWorkPolicy.REPLACE, Collections.singletonList(mVar));
    }

    public Context l() {
        return this.f15256a;
    }

    public androidx.work.a m() {
        return this.f15257b;
    }

    public androidx.work.impl.utils.o p() {
        return this.f15262g;
    }

    public Processor q() {
        return this.f15261f;
    }

    public List r() {
        return this.f15260e;
    }

    public i4.n s() {
        return this.f15265j;
    }

    public WorkDatabase t() {
        return this.f15258c;
    }

    public k4.c u() {
        return this.f15259d;
    }

    public void w() {
        synchronized (f15255n) {
            try {
                this.f15263h = true;
                BroadcastReceiver.PendingResult pendingResult = this.f15264i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.f15264i = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void x() {
        androidx.work.impl.background.systemjob.k.a(l());
        t().n0().p();
        t.b(m(), t(), r());
    }

    public void y(BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f15255n) {
            try {
                this.f15264i = pendingResult;
                if (this.f15263h) {
                    pendingResult.finish();
                    this.f15264i = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void z(u uVar) {
        A(uVar, null);
    }

    public d0(Context context, androidx.work.a aVar, k4.c cVar, boolean z10) {
        this(context, aVar, cVar, WorkDatabase.g0(context.getApplicationContext(), cVar.b(), z10));
    }

    public d0(Context context, androidx.work.a aVar, k4.c cVar, WorkDatabase workDatabase) {
        Context applicationContext = context.getApplicationContext();
        androidx.work.j.h(new androidx.work.j.a(aVar.j()));
        i4.n nVar = new i4.n(applicationContext, cVar);
        this.f15265j = nVar;
        List listJ = j(applicationContext, aVar, nVar);
        v(context, aVar, cVar, workDatabase, listJ, new Processor(context, aVar, cVar, workDatabase, listJ));
    }
}
