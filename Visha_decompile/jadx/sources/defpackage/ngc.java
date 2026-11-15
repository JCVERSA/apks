package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.firebase.messaging.i;
import java.util.concurrent.TimeUnit;

public abstract class ngc {
    public static final long a = TimeUnit.MINUTES.toMillis(1);
    public static final Object b = new Object();
    public static lgc c;

    public static void b(Context context) {
        if (c == null) {
            lgc lgcVar = new lgc(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            c = lgcVar;
            lgcVar.d(true);
        }
    }

    public static void c(Intent intent) {
        synchronized (b) {
            try {
                if (c != null && d(intent)) {
                    g(intent, false);
                    c.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean d(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    public static void f(Context context, i iVar, final Intent intent) {
        synchronized (b) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                if (!zD) {
                    c.a(a);
                }
                iVar.d(intent).b(new pe7() {
                    @Override
                    public final void onComplete(xda xdaVar) {
                        ngc.c(intent);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void g(Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    public static ComponentName h(Context context, Intent intent) {
        synchronized (b) {
            try {
                b(context);
                boolean zD = d(intent);
                g(intent, true);
                ComponentName componentNameStartService = context.startService(intent);
                if (componentNameStartService == null) {
                    return null;
                }
                if (!zD) {
                    c.a(a);
                }
                return componentNameStartService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
