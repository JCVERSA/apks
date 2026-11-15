package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.exifinterface.media.ExifInterface;
import com.alibaba.android.arouter.utils.Consts;
import com.google.firebase.messaging.g;
import defpackage.jra;
import defpackage.vqa;
import defpackage.wi4;
import defpackage.xda;
import defpackage.zda;
import defpackage.zn6;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class g {
    public static final long i = TimeUnit.HOURS.toSeconds(8);
    public final Context a;
    public final zn6 b;
    public final wi4 c;
    public final FirebaseMessaging d;
    public final ScheduledExecutorService f;
    public final jra h;
    public final Map e = new ArrayMap();
    public boolean g = false;

    public g(FirebaseMessaging firebaseMessaging, zn6 zn6Var, jra jraVar, wi4 wi4Var, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.d = firebaseMessaging;
        this.b = zn6Var;
        this.h = jraVar;
        this.c = wi4Var;
        this.a = context;
        this.f = scheduledExecutorService;
    }

    public static void b(xda xdaVar) throws IOException {
        try {
            com.google.android.gms.tasks.a.b(xdaVar, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException | TimeoutException e) {
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            if (!(cause instanceof RuntimeException)) {
                throw new IOException(e2);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static xda e(final FirebaseMessaging firebaseMessaging, final zn6 zn6Var, final wi4 wi4Var, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return com.google.android.gms.tasks.a.c(scheduledExecutorService, new Callable() {
            @Override
            public final Object call() {
                return g.i(context, scheduledExecutorService, firebaseMessaging, zn6Var, wi4Var);
            }
        });
    }

    public static boolean g() {
        return Log.isLoggable("FirebaseMessaging", 3);
    }

    public static g i(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, zn6 zn6Var, wi4 wi4Var) {
        return new g(firebaseMessaging, zn6Var, jra.a(context, scheduledExecutorService), wi4Var, context, scheduledExecutorService);
    }

    public final void c(String str) throws IOException {
        b(this.c.m(this.d.k(), str));
    }

    public final void d(String str) throws IOException {
        b(this.c.n(this.d.k(), str));
    }

    public boolean f() {
        return this.h.b() != null;
    }

    public synchronized boolean h() {
        return this.g;
    }

    public final void j(vqa vqaVar) {
        synchronized (this.e) {
            try {
                String strE = vqaVar.e();
                if (this.e.containsKey(strE)) {
                    ArrayDeque arrayDeque = (ArrayDeque) this.e.get(strE);
                    zda zdaVar = (zda) arrayDeque.poll();
                    if (zdaVar != null) {
                        zdaVar.c(null);
                    }
                    if (arrayDeque.isEmpty()) {
                        this.e.remove(strE);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002c  */
    public boolean k(vqa vqaVar) throws IOException {
        byte b;
        try {
            String strB = vqaVar.b();
            int iHashCode = strB.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && strB.equals("U")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (strB.equals(ExifInterface.LATITUDE_SOUTH)) {
                b = 0;
            } else {
                b = -1;
            }
            if (b == 0) {
                c(vqaVar.c());
                if (g()) {
                    Log.d("FirebaseMessaging", "Subscribe to topic: " + vqaVar.c() + " succeeded.");
                }
            } else if (b == 1) {
                d(vqaVar.c());
                if (g()) {
                    Log.d("FirebaseMessaging", "Unsubscribe from topic: " + vqaVar.c() + " succeeded.");
                }
            } else if (g()) {
                Log.d("FirebaseMessaging", "Unknown topic operation" + vqaVar + Consts.DOT);
            }
            return true;
        } catch (IOException e) {
            if (!"SERVICE_NOT_AVAILABLE".equals(e.getMessage()) && !"INTERNAL_SERVER_ERROR".equals(e.getMessage()) && !"TOO_MANY_SUBSCRIBERS".equals(e.getMessage())) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.e("FirebaseMessaging", "Topic operation failed without exception message. Will retry Topic operation.");
                return false;
            }
            Log.e("FirebaseMessaging", "Topic operation failed: " + e.getMessage() + ". Will retry Topic operation.");
            return false;
        }
    }

    public void l(Runnable runnable, long j) {
        this.f.schedule(runnable, j, TimeUnit.SECONDS);
    }

    public synchronized void m(boolean z) {
        this.g = z;
    }

    public final void n() {
        if (h()) {
            return;
        }
        q(0L);
    }

    public void o() {
        if (f()) {
            n();
        }
    }

    public boolean p() {
        while (true) {
            synchronized (this) {
                try {
                    vqa vqaVarB = this.h.b();
                    if (vqaVarB == null) {
                        if (g()) {
                            Log.d("FirebaseMessaging", "topic sync succeeded");
                        }
                        return true;
                    }
                    if (!k(vqaVarB)) {
                        return false;
                    }
                    this.h.d(vqaVarB);
                    j(vqaVarB);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void q(long j) {
        l(new TopicsSyncTask(this, this.a, this.b, Math.min(Math.max(30L, 2 * j), i)), j);
        m(true);
    }
}
