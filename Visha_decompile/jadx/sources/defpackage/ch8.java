package defpackage;

import android.app.Application;
import android.os.Process;
import com.google.android.gms.internal.common.zzy;

public abstract class ch8 {
    public static String a;
    public static Boolean b;

    public static String a() {
        if (a == null) {
            a = Application.getProcessName();
        }
        return a;
    }

    public static boolean b() {
        Boolean boolValueOf = b;
        if (boolValueOf == null) {
            if (d28.h()) {
                boolValueOf = Boolean.valueOf(Process.isIsolated());
            } else {
                try {
                    Object objA = e4j.a(Process.class, "isIsolated", new k1j[0]);
                    Object[] objArr = new Object[0];
                    if (objA == null) {
                        throw new zzy(hpj.a("expected a non-null reference", objArr));
                    }
                    boolValueOf = (Boolean) objA;
                } catch (ReflectiveOperationException unused) {
                    boolValueOf = Boolean.FALSE;
                }
            }
            b = boolValueOf;
        }
        return boolValueOf.booleanValue();
    }
}
