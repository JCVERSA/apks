package defpackage;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.tasks.a;
import com.google.firebase.messaging.i;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public class mp3 {
    public static final Object c = new Object();
    public static i d;
    public final Context a;
    public final Executor b = new ur1();

    public mp3(Context context) {
        this.a = context;
    }

    public static xda e(Context context, Intent intent, boolean z) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        i iVarF = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (!z) {
            return iVarF.d(intent).i(new ur1(), new xh1() {
                @Override
                public final Object a(xda xdaVar) {
                    return mp3.g(xdaVar);
                }
            });
        }
        if (he9.b().e(context)) {
            ngc.f(context, iVarF, intent);
        } else {
            iVarF.d(intent);
        }
        return a.e(-1);
    }

    public static i f(Context context, String str) {
        i iVar;
        synchronized (c) {
            try {
                if (d == null) {
                    d = new i(context, str);
                }
                iVar = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    public static Integer g(xda xdaVar) {
        return -1;
    }

    public static Integer h(Context context, Intent intent) {
        return Integer.valueOf(he9.b().g(context, intent));
    }

    public static Integer i(xda xdaVar) {
        return 403;
    }

    public static xda j(Context context, Intent intent, boolean z, xda xdaVar) {
        return (d28.g() && ((Integer) xdaVar.m()).intValue() == 402) ? e(context, intent, z).i(new ur1(), new xh1() {
            @Override
            public final Object a(xda xdaVar2) {
                return mp3.i(xdaVar2);
            }
        }) : xdaVar;
    }

    public xda k(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return l(this.a, intent);
    }

    public xda l(final Context context, final Intent intent) {
        boolean z = d28.g() && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z2 = (intent.getFlags() & 268435456) != 0;
        return (!z || z2) ? a.c(this.b, new Callable() {
            @Override
            public final Object call() {
                return mp3.h(context, intent);
            }
        }).k(this.b, new xh1() {
            @Override
            public final Object a(xda xdaVar) {
                return mp3.j(context, intent, z2, xdaVar);
            }
        }) : e(context, intent, z2);
    }
}
