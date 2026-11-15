package defpackage;

import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class ux5 {
    public static final yp6 a(Throwable th, String str) throws Throwable {
        if (th != null) {
            throw th;
        }
        d();
        throw new KotlinNothingValueException();
    }

    public static yp6 b(Throwable th, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final boolean c(rx5 rx5Var) {
        return rx5Var.b() instanceof yp6;
    }

    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final rx5 e(sx5 sx5Var, List list) {
        try {
            return sx5Var.c(list);
        } catch (Throwable th) {
            return a(th, sx5Var.b());
        }
    }
}
