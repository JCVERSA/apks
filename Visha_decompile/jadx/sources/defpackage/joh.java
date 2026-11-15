package defpackage;

import android.content.Context;
import com.google.android.gms.appset.AppSet;

public abstract class joh {
    public static xda a;
    public static ye b;
    public static final Object c = new Object();

    public static xda a(Context context) {
        xda xdaVar;
        b(context, false);
        synchronized (c) {
            xdaVar = a;
        }
        return xdaVar;
    }

    public static void b(Context context, boolean z) {
        synchronized (c) {
            try {
                if (b == null) {
                    b = AppSet.a(context);
                }
                xda xdaVar = a;
                if (xdaVar == null || ((xdaVar.p() && !a.q()) || (z && a.p()))) {
                    a = ((ye) wd8.m(b, "the appSetIdClient shouldn't be null")).a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
