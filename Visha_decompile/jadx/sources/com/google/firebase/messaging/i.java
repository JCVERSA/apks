package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import defpackage.cf1;
import defpackage.pe7;
import defpackage.xda;
import defpackage.zda;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class i implements ServiceConnection {
    public final Context b;
    public final Intent c;
    public final ScheduledExecutorService d;
    public final Queue e;
    public h f;
    public boolean g;

    public static class a {
        public final Intent a;
        public final zda b = new zda();

        public a(Intent intent) {
            this.a = intent;
        }

        public void c(ScheduledExecutorService scheduledExecutorService) {
            final ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new Runnable() {
                @Override
                public final void run() {
                    this.b.f();
                }
            }, 20L, TimeUnit.SECONDS);
            e().c(scheduledExecutorService, new pe7() {
                @Override
                public final void onComplete(xda xdaVar) {
                    scheduledFutureSchedule.cancel(false);
                }
            });
        }

        public void d() {
            this.b.e(null);
        }

        public xda e() {
            return this.b.a();
        }

        public final void f() {
            Log.w("FirebaseMessaging", "Service took too long to process intent: " + this.a.getAction() + " finishing.");
            d();
        }
    }

    public i(Context context, String str) {
        this(context, str, a());
    }

    public static ScheduledThreadPoolExecutor a() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new com.google.android.gms.common.util.concurrent.a("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        return scheduledThreadPoolExecutor;
    }

    public final void b() {
        while (!this.e.isEmpty()) {
            ((a) this.e.poll()).d();
        }
    }

    public final synchronized void c() {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "flush queue called");
            }
            while (!this.e.isEmpty()) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "found intent to be delivered");
                }
                h hVar = this.f;
                if (hVar == null || !hVar.isBinderAlive()) {
                    e();
                    return;
                }
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "binder is alive, sending the intent.");
                }
                this.f.c((a) this.e.poll());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized xda d(Intent intent) {
        a aVar;
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "new intent queued in the bind-strategy delivery");
            }
            aVar = new a(intent);
            aVar.c(this.d);
            this.e.add(aVar);
            c();
        } catch (Throwable th) {
            throw th;
        }
        return aVar.e();
    }

    public final void e() {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("binder is dead. start connection? ");
            sb.append(!this.g);
            Log.d("FirebaseMessaging", sb.toString());
        }
        if (this.g) {
            return;
        }
        this.g = true;
        try {
            if (cf1.b().a(this.b, this.c, this, 65)) {
                return;
            } else {
                Log.e("FirebaseMessaging", "binding to the service failed");
            }
        } catch (SecurityException e) {
            Log.e("FirebaseMessaging", "Exception while binding the service", e);
        }
        this.g = false;
        b();
    }

    @Override
    public synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "onServiceConnected: " + componentName);
            }
            this.g = false;
            if (iBinder instanceof h) {
                this.f = (h) iBinder;
                c();
                return;
            }
            Log.e("FirebaseMessaging", "Invalid service connection: " + iBinder);
            b();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "onServiceDisconnected: " + componentName);
        }
        c();
    }

    public i(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
        this.e = new ArrayDeque();
        this.g = false;
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.c = new Intent(str).setPackage(applicationContext.getPackageName());
        this.d = scheduledExecutorService;
    }
}
