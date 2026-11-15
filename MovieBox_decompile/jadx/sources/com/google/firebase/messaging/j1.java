package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class j1 implements ServiceConnection {

    private final Context f31278a;

    private final Intent f31279b;

    private final ScheduledExecutorService f31280c;

    private final Queue f31281d;

    private g1 f31282e;

    private boolean f31283f;

    static class a {

        final Intent f31284a;

        private final TaskCompletionSource f31285b = new TaskCompletionSource();

        a(Intent intent) {
            this.f31284a = intent;
        }

        public void f() {
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + this.f31284a.getAction() + " finishing.");
            d();
        }

        void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() {
                @Override
                public final void run() {
                    this.f31266a.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().addOnCompleteListener(scheduledExecutorService, new OnCompleteListener() {
                @Override
                public final void onComplete(Task task) {
                    scheduledFutureSchedule.cancel(false);
                }
            });
        }

        public void d() {
            this.f31285b.trySetResult(null);
        }

        Task e() {
            return this.f31285b.getTask();
        }
    }

    j1(Context context, String str) {
        this(context, str, a());
    }

    private static ScheduledThreadPoolExecutor a() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        return scheduledThreadPoolExecutor;
    }

    private void b() {
        while (!this.f31281d.isEmpty()) {
            ((a) this.f31281d.poll()).d();
        }
    }

    private synchronized void c() {
        try {
            Log.isLoggable("FirebaseMessaging", 3);
            while (!this.f31281d.isEmpty()) {
                Log.isLoggable("FirebaseMessaging", 3);
                g1 g1Var = this.f31282e;
                if (g1Var == null || !g1Var.isBinderAlive()) {
                    e();
                    return;
                } else {
                    Log.isLoggable("FirebaseMessaging", 3);
                    this.f31282e.c((a) this.f31281d.poll());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void e() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("binder is dead. start connection? ");
            sb2.append(!this.f31283f);
        }
        if (this.f31283f) {
            return;
        }
        this.f31283f = true;
        try {
            if (ConnectionTracker.getInstance().bindService(this.f31278a, this.f31279b, this, 65)) {
                return;
            } else {
                Log.e("FirebaseMessaging", "binding to the service failed");
            }
        } catch (SecurityException e10) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e10);
        }
        this.f31283f = false;
        b();
    }

    synchronized Task d(Intent intent) {
        a aVar;
        Log.isLoggable("FirebaseMessaging", 3);
        aVar = new a(intent);
        aVar.c(this.f31280c);
        this.f31281d.add(aVar);
        c();
        return aVar.e();
    }

    @Override
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onServiceConnected: ");
                sb2.append(componentName);
            }
            this.f31283f = false;
            if (iBinder instanceof g1) {
                this.f31282e = (g1) iBinder;
                c();
                return;
            }
            Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
            b();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onServiceDisconnected: ");
            sb2.append(componentName);
        }
        c();
    }

    j1(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.f31281d = new ArrayDeque();
        this.f31283f = false;
        Context applicationContext = context.getApplicationContext();
        this.f31278a = applicationContext;
        this.f31279b = new Intent(str).setPackage(applicationContext.getPackageName());
        this.f31280c = scheduledExecutorService;
    }
}
