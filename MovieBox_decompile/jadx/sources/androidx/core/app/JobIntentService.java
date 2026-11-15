package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
public abstract class JobIntentService extends Service {

    static final Object f7637h = new Object();

    static final HashMap f7638i = new HashMap();

    b f7639a;

    h f7640b;

    a f7641c;

    boolean f7642d = false;

    boolean f7643e = false;

    boolean f7644f = false;

    final ArrayList f7645g;

    final class a extends AsyncTask {
        a() {
        }

        @Override
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e eVarA = JobIntentService.this.a();
                if (eVarA == null) {
                    return null;
                }
                JobIntentService.this.e(eVarA.getIntent());
                eVarA.a();
            }
        }

        @Override
        public void onCancelled(Void r10) {
            JobIntentService.this.g();
        }

        @Override
        public void onPostExecute(Void r10) {
            JobIntentService.this.g();
        }
    }

    interface b {
        IBinder a();

        e b();
    }

    static final class c extends h {

        private final Context f7647d;

        private final PowerManager.WakeLock f7648e;

        private final PowerManager.WakeLock f7649f;

        boolean f7650g;

        boolean f7651h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f7647d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f7648e = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f7649f = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override
        public void b() {
            synchronized (this) {
                try {
                    if (this.f7651h) {
                        if (this.f7650g) {
                            this.f7648e.acquire(60000L);
                        }
                        this.f7651h = false;
                        this.f7649f.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void c() {
            synchronized (this) {
                try {
                    if (!this.f7651h) {
                        this.f7651h = true;
                        this.f7649f.acquire(600000L);
                        this.f7648e.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void d() {
            synchronized (this) {
                this.f7650g = false;
            }
        }
    }

    final class d implements e {

        final Intent f7652a;

        final int f7653b;

        d(Intent intent, int i10) {
            this.f7652a = intent;
            this.f7653b = i10;
        }

        @Override
        public void a() {
            JobIntentService.this.stopSelf(this.f7653b);
        }

        @Override
        public Intent getIntent() {
            return this.f7652a;
        }
    }

    interface e {
        void a();

        Intent getIntent();
    }

    static final class f extends JobServiceEngine implements b {

        final JobIntentService f7655a;

        final Object f7656b;

        JobParameters f7657c;

        final class a implements e {

            final JobWorkItem f7658a;

            a(JobWorkItem jobWorkItem) {
                this.f7658a = jobWorkItem;
            }

            @Override
            public void a() {
                synchronized (f.this.f7656b) {
                    try {
                        JobParameters jobParameters = f.this.f7657c;
                        if (jobParameters != null) {
                            jobParameters.completeWork(this.f7658a);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }

            @Override
            public Intent getIntent() {
                return this.f7658a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f7656b = new Object();
            this.f7655a = jobIntentService;
        }

        @Override
        public IBinder a() {
            return getBinder();
        }

        @Override
        public e b() {
            synchronized (this.f7656b) {
                try {
                    JobParameters jobParameters = this.f7657c;
                    if (jobParameters == null) {
                        return null;
                    }
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f7655a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.f7657c = jobParameters;
            this.f7655a.c(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f7655a.b();
            synchronized (this.f7656b) {
                this.f7657c = null;
            }
            return zB;
        }
    }

    static final class g extends h {

        private final JobInfo f7660d;

        private final JobScheduler f7661e;

        g(Context context, ComponentName componentName, int i10) {
            super(componentName);
            a(i10);
            this.f7660d = new JobInfo.Builder(i10, this.f7662a).setOverrideDeadline(0L).build();
            this.f7661e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f7645g = null;
        } else {
            this.f7645g = new ArrayList();
        }
    }

    static h d(Context context, ComponentName componentName, boolean z10, int i10) {
        h cVar;
        HashMap map = f7638i;
        h hVar = (h) map.get(componentName);
        if (hVar == null) {
            if (Build.VERSION.SDK_INT < 26) {
                cVar = new c(context, componentName);
            } else {
                if (!z10) {
                    throw new IllegalArgumentException("Can't be here without a job id");
                }
                cVar = new g(context, componentName, i10);
            }
            hVar = cVar;
            map.put(componentName, hVar);
        }
        return hVar;
    }

    e a() {
        b bVar = this.f7639a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.f7645g) {
            try {
                if (this.f7645g.size() <= 0) {
                    return null;
                }
                return (e) this.f7645g.remove(0);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean b() {
        a aVar = this.f7641c;
        if (aVar != null) {
            aVar.cancel(this.f7642d);
        }
        this.f7643e = true;
        return f();
    }

    void c(boolean z10) {
        if (this.f7641c == null) {
            this.f7641c = new a();
            h hVar = this.f7640b;
            if (hVar != null && z10) {
                hVar.c();
            }
            this.f7641c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    protected abstract void e(Intent intent);

    public boolean f() {
        return true;
    }

    void g() {
        ArrayList arrayList = this.f7645g;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.f7641c = null;
                    ArrayList arrayList2 = this.f7645g;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.f7644f) {
                        this.f7640b.b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public IBinder onBind(Intent intent) {
        b bVar = this.f7639a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f7639a = new f(this);
            this.f7640b = null;
        } else {
            this.f7639a = null;
            this.f7640b = d(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f7645g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f7644f = true;
                this.f7640b.b();
            }
        }
    }

    @Override
    public int onStartCommand(Intent intent, int i10, int i11) {
        if (this.f7645g == null) {
            return 2;
        }
        this.f7640b.d();
        synchronized (this.f7645g) {
            ArrayList arrayList = this.f7645g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i11));
            c(true);
        }
        return 3;
    }

    static abstract class h {

        final ComponentName f7662a;

        boolean f7663b;

        int f7664c;

        h(ComponentName componentName) {
            this.f7662a = componentName;
        }

        void a(int i10) {
            if (!this.f7663b) {
                this.f7663b = true;
                this.f7664c = i10;
            } else {
                if (this.f7664c == i10) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i10 + " is different than previous " + this.f7664c);
            }
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }
    }
}
