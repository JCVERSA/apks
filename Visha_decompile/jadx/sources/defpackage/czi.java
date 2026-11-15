package defpackage;

import android.os.Binder;

public abstract class czi {
    public static Object a(gzi gziVar) {
        try {
            return gziVar.zza();
        } catch (SecurityException unused) {
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return gziVar.zza();
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }
}
