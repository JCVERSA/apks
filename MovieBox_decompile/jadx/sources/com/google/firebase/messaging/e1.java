package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.stats.WakeLock;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.TimeUnit;

abstract class e1 {

    static final long f31248a = TimeUnit.MINUTES.toMillis(1);

    private static final Object f31249b = new Object();

    private static WakeLock f31250c;

    private static void b(Context context) {
        if (f31250c == null) {
            WakeLock wakeLock = new WakeLock(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f31250c = wakeLock;
            wakeLock.setReferenceCounted(true);
        }
    }

    public static void c(Intent intent) {
        synchronized (f31249b) {
            try {
                if (f31250c != null && d(intent)) {
                    g(intent, false);
                    f31250c.release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    static boolean d(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    static void f(Context context, j1 j1Var, final Intent intent) {
        synchronized (f31249b) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                if (!zD) {
                    f31250c.acquire(f31248a);
                }
                j1Var.d(intent).addOnCompleteListener(new OnCompleteListener() {
                    @Override
                    public final void onComplete(Task task) {
                        e1.c(intent);
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void g(Intent intent, boolean z10) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z10);
    }

    static ComponentName h(Context context, Intent intent) {
        synchronized (f31249b) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!zD) {
                    f31250c.acquire(f31248a);
                }
                return componentNameStartService;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
