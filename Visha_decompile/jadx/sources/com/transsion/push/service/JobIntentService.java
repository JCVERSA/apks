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
import android.os.IBinder;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class JobIntentService extends Service {
    public static final Object i = new Object();
    public static final HashMap j = new HashMap();
    public b b;
    public g c;
    public a d;
    public boolean e = false;
    public boolean f = false;
    public boolean g = false;
    public final ArrayList h = null;

    public final class a extends AsyncTask {
        public a() {
        }

        @Override
        public Void doInBackground(Void... voidArr) {
            while (true) {
                d dVarA = JobIntentService.this.a();
                if (dVarA == null) {
                    return null;
                }
                try {
                    JobIntentService.this.e(dVarA.getIntent());
                    dVarA.complete();
                } catch (Exception unused) {
                }
            }
        }

        @Override
        public void onCancelled(Void r1) {
            JobIntentService.this.f();
        }

        @Override
        public void onPostExecute(Void r1) {
            JobIntentService.this.f();
        }
    }

    public interface b {
        IBinder compatGetBinder();

        d dequeueWork();
    }

    public final class c implements d {
        public final Intent a;
        public final int b;

        public c(Intent intent, int i) {
            this.a = intent;
            this.b = i;
        }

        @Override
        public void complete() {
            JobIntentService.this.stopSelf(this.b);
        }

        @Override
        public Intent getIntent() {
            return this.a;
        }
    }

    public interface d {
        void complete();

        Intent getIntent();
    }

    public static final class e extends JobServiceEngine implements b {
        public final JobIntentService a;
        public final Object b;
        public JobParameters c;

        public final class a implements d {
            public final JobWorkItem a;

            public a(JobWorkItem jobWorkItem) {
                this.a = jobWorkItem;
            }

            @Override
            public void complete() {
                synchronized (e.this.b) {
                    JobParameters jobParameters = e.this.c;
                    if (jobParameters != null) {
                        try {
                            jobParameters.completeWork(this.a);
                        } catch (IllegalArgumentException e) {
                            Log.e("JobServiceEngineImpl", "IllegalArgumentException: Failed to run mParams.completeWork(mJobWork)!", e);
                        } catch (SecurityException e2) {
                            Log.e("JobServiceEngineImpl", "SecurityException: Failed to run mParams.completeWork(mJobWork)!", e2);
                        }
                    }
                }
            }

            @Override
            public Intent getIntent() {
                return this.a.getIntent();
            }
        }

        public e(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.b = new Object();
            this.a = jobIntentService;
        }

        @Override
        public IBinder compatGetBinder() {
            return getBinder();
        }

        @Override
        public d dequeueWork() {
            synchronized (this.b) {
                JobParameters jobParameters = this.c;
                if (jobParameters == null) {
                    return null;
                }
                try {
                    JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                    if (jobWorkItemDequeueWork == null) {
                        return null;
                    }
                    jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.a.getClassLoader());
                    return new a(jobWorkItemDequeueWork);
                } catch (SecurityException e) {
                    Log.e("JobServiceEngineImpl", "Failed to run mParams.dequeueWork()!", e);
                    return null;
                }
            }
        }

        @Override
        public boolean onStartJob(JobParameters jobParameters) {
            this.c = jobParameters;
            this.a.c(false);
            return true;
        }

        @Override
        public boolean onStopJob(JobParameters jobParameters) {
            boolean zB = this.a.b();
            synchronized (this.b) {
                this.c = null;
            }
            return zB;
        }
    }

    public static final class f extends g {
        public final JobInfo d;
        public final JobScheduler e;

        public f(Context context, ComponentName componentName, int i) {
            super(componentName);
            b(i);
            this.d = new JobInfo.Builder(i, this.a).setOverrideDeadline(0L).build();
            this.e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override
        public void a(Intent intent) {
            this.e.enqueue(this.d, new JobWorkItem(intent));
        }
    }

    public static abstract class g {
        public final ComponentName a;
        public boolean b;
        public int c;

        public g(ComponentName componentName) {
            this.a = componentName;
        }

        public abstract void a(Intent intent);

        public void b(int i) {
            if (!this.b) {
                this.b = true;
                this.c = i;
            } else {
                if (this.c == i) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.c);
            }
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }
    }

    public static g d(Context context, ComponentName componentName, boolean z, int i2) {
        HashMap map = j;
        g gVar = (g) map.get(componentName);
        if (gVar != null) {
            return gVar;
        }
        if (!z) {
            throw new IllegalArgumentException("Can't be here without a job id");
        }
        f fVar = new f(context, componentName, i2);
        map.put(componentName, fVar);
        return fVar;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class cls, int i2, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, (Class<?>) cls), i2, intent);
    }

    public d a() {
        b bVar = this.b;
        if (bVar != null) {
            return bVar.dequeueWork();
        }
        synchronized (this.h) {
            try {
                if (this.h.size() <= 0) {
                    return null;
                }
                return (d) this.h.remove(0);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean b() {
        a aVar = this.d;
        if (aVar != null) {
            aVar.cancel(this.e);
        }
        this.f = true;
        return onStopCurrentWork();
    }

    public void c(boolean z) {
        if (this.d == null) {
            this.d = new a();
            g gVar = this.c;
            if (gVar != null && z) {
                gVar.d();
            }
            try {
                this.d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.e("JobIntentService", "RejectedExecutionException: rejected from java.util.concurrent.ThreadPoolExecutor", e2);
            }
        }
    }

    public abstract void e(Intent intent);

    public void f() {
        ArrayList arrayList = this.h;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.d = null;
                    ArrayList arrayList2 = this.h;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        c(false);
                    } else if (!this.g) {
                        this.c.c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public boolean isStopped() {
        return this.f;
    }

    @Override
    public IBinder onBind(@NonNull Intent intent) {
        b bVar = this.b;
        if (bVar != null) {
            return bVar.compatGetBinder();
        }
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.b = new e(this);
        this.c = null;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.h;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.g = true;
                this.c.c();
            }
        }
    }

    @Override
    public int onStartCommand(@Nullable Intent intent, int i2, int i3) {
        if (this.h == null) {
            return 2;
        }
        this.c.e();
        synchronized (this.h) {
            ArrayList arrayList = this.h;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new c(intent, i3));
            c(true);
        }
        return 3;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    public void setInterruptIfStopped(boolean z) {
        this.e = z;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i2, @NonNull Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (i) {
            g gVarD = d(context, componentName, true, i2);
            gVarD.b(i2);
            try {
                gVarD.a(intent);
            } catch (IllegalStateException unused) {
            }
        }
    }
}
