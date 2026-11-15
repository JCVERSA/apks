package com.transsion.push.service;

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
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class JobIntentService extends Service {

    static final Object f48829h = new Object();

    static final HashMap f48830i = new HashMap();

    b f48831a;

    h f48832b;

    a f48833c;

    boolean f48834d = false;

    boolean f48835e = false;

    boolean f48836f = false;

    final ArrayList f48837g;

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
                try {
                    JobIntentService.this.e(eVarA.getIntent());
                    eVarA.a();
                } catch (Exception unused) {
                }
            }
        }

        @Override
        public void onCancelled(Void r10) {
            JobIntentService.this.f();
        }

        @Override
        public void onPostExecute(Void r10) {
            JobIntentService.this.f();
        }
    }

    interface b {
        IBinder a();

        e b();
    }

    static final class c extends h {

        private final Context f48839d;

        private final PowerManager.WakeLock f48840e;

        private final PowerManager.WakeLock f48841f;

        boolean f48842g;

        boolean f48843h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f48839d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f48840e = wakeLockNewWakeLock;
            wakeLockNewWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock wakeLockNewWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f48841f = wakeLockNewWakeLock2;
            wakeLockNewWakeLock2.setReferenceCounted(false);
        }

        @Override
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f48854a);
            if (this.f48839d.startService(intent2) != null) {
                synchronized (this) {
                    try {
                        if (!this.f48842g) {
                            this.f48842g = true;
                            if (!this.f48843h) {
                                this.f48840e.acquire(60000L);
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override
        public void c() {
            synchronized (this) {
                try {
                    if (this.f48843h) {
                        if (this.f48842g) {
                            this.f48840e.acquire(60000L);
                        }
                        this.f48843h = false;
                        this.f48841f.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void d() {
            synchronized (this) {
                try {
                    if (!this.f48843h) {
                        this.f48843h = true;
                        this.f48841f.acquire(600000L);
                        this.f48840e.release();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override
        public void e() {
            synchronized (this) {
                this.f48842g = false;
            }
        }
    }

    final class d implements e {

        final Intent f48844a;

        final int f48845b;

        d(Intent intent, int i10) {
            this.f48844a = intent;
            this.f48845b = i10;
        }

        @Override
        public void a() {
            JobIntentService.this.stopSelf(this.f48845b);
        }

        @Override
        public Intent getIntent() {
            return this.f48844a;
        }
    }

    interface e {
        void a();

        Intent getIntent();
    }

    static final class f extends JobServiceEngine implements b {

        final JobIntentService f48847a;

        final Object f48848b;

        JobParameters f48849c;

        final class a implements e {

            final JobWorkItem f48850a;

            a(JobWorkItem jobWorkItem) {
                this.f48850a = jobWorkItem;
            }

            @Override
            public void a() {
                synchronized (f.this.f48848b) {
                    JobParameters jobParameters = f.this.f48849c;
                    if (jobParameters != null) {
                        try {
                            jobParameters.completeWork(this.f48850a);
                        } catch (IllegalArgumentException e10) {
                            Log.e("JobServiceEngineImpl", "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!", e10);
                        } catch (SecurityException e11) {
                            Log.e("JobServiceEngineImpl", "SecurityException: Failed to run mParams.completeWork(mJobWork)!", e11);
                        }
                    }
                }
            }

            @Override
            public Intent getIntent() {
                return this.f48850a.getIntent();
            }
        }

        f(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f48848b = new Object();
            this.f48847a = jobIntentService;
        }

        @Override
        public IBinder a() {
            return getBinder();
        }

        @Override
        public e b() {
            synchronized (this.f48848b) {
                JobParameters jobParameters = this.f48849c;
                if (jobParameters == null) {
                    return null;
                }
                try {
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f48847a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (SecurityException e10) {
                    Log.e("JobServiceEngineImpl", "Failed to run mParams.dequeueWork()!", e10);
                    return null;
                }
            }
        }

        public boolean onStartJob(JobParameters jobParameters) {
            this.f48849c = jobParameters;
            this.f48847a.c(false);
            return true;
        }

        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.f48847a.b();
            synchronized (this.f48848b) {
                this.f48849c = null;
            }
            return zB;
        }
    }

    static final class g extends h {

        private final JobInfo f48852d;

        private final JobScheduler f48853e;

        g(Context context, ComponentName componentName, int i10) {
            super(componentName);
            b(i10);
            this.f48852d = new JobInfo.Builder(i10, this.f48854a).setOverrideDeadline(0L).build();
            this.f48853e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override
        void a(Intent intent) {
            this.f48853e.enqueue(this.f48852d, com.transsion.push.service.c.a(intent));
        }
    }

    static abstract class h {

        final ComponentName f48854a;

        boolean f48855b;

        int f48856c;

        h(ComponentName componentName) {
            this.f48854a = componentName;
        }

        abstract void a(Intent intent);

        void b(int i10) {
            if (!this.f48855b) {
                this.f48855b = true;
                this.f48856c = i10;
            } else {
                if (this.f48856c == i10) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i10 + " is different than previous " + this.f48856c);
            }
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f48837g = null;
        } else {
            this.f48837g = new ArrayList();
        }
    }

    static h d(Context context, ComponentName componentName, boolean z10, int i10) {
        h cVar;
        HashMap map = f48830i;
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

    public static void enqueueWork(@NonNull Context context, @NonNull Class cls, int i10, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, (Class<?>) cls), i10, intent);
    }

    e a() {
        b bVar = this.f48831a;
        if (bVar != null) {
            return bVar.b();
        }
        synchronized (this.f48837g) {
            try {
                if (this.f48837g.size() <= 0) {
                    return null;
                }
                return (e) this.f48837g.remove(0);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    boolean b() {
        a aVar = this.f48833c;
        if (aVar != null) {
            aVar.cancel(this.f48834d);
        }
        this.f48835e = true;
        return onStopCurrentWork();
    }

    void c(boolean z10) {
        if (this.f48833c == null) {
            this.f48833c = new a();
            h hVar = this.f48832b;
            if (hVar != null && z10) {
                hVar.d();
            }
            try {
                this.f48833c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e10) {
                Log.e("JobIntentService", "RejectedExecutionException: rejected from java.util.concurrent.ThreadPoolExecutor", e10);
            }
        }
    }

    protected abstract void e(Intent intent);

    void f() {
        ArrayList arrayList = this.f48837g;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.f48833c = null;
                    ArrayList arrayList2 = this.f48837g;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.f48836f) {
                        this.f48832b.c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public boolean isStopped() {
        return this.f48835e;
    }

    @Override
    public IBinder onBind(@NonNull Intent intent) {
        b bVar = this.f48831a;
        if (bVar != null) {
            return bVar.a();
        }
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f48831a = new f(this);
            this.f48832b = null;
        } else {
            this.f48831a = null;
            this.f48832b = d(this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f48837g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f48836f = true;
                this.f48832b.c();
            }
        }
    }

    @Override
    public int onStartCommand(@Nullable Intent intent, int i10, int i11) {
        if (this.f48837g == null) {
            return 2;
        }
        this.f48832b.e();
        synchronized (this.f48837g) {
            ArrayList arrayList = this.f48837g;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i11));
            c(true);
        }
        return 3;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    public void setInterruptIfStopped(boolean z10) {
        this.f48834d = z10;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i10, @NonNull Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (f48829h) {
            h hVarD = d(context, componentName, true, i10);
            hVarD.b(i10);
            try {
                hVarD.a(intent);
            } catch (IllegalStateException unused) {
            }
        }
    }
}
