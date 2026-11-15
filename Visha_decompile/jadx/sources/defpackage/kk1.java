package defpackage;

import java.lang.reflect.InvocationTargetException;
import kotlin.coroutines.d;

public abstract class kk1 {
    public static final void a(d dVar, Throwable th) {
        try {
            hk1 hk1Var = (hk1) dVar.get(hk1.w1);
            if (hk1Var != null) {
                hk1Var.handleException(dVar, th);
            } else {
                jk1.a(dVar, th);
            }
        } catch (Throwable th2) {
            jk1.a(dVar, b(th, th2));
        }
    }

    public static final Throwable b(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        ue3.a(runtimeException, th);
        return runtimeException;
    }
}
