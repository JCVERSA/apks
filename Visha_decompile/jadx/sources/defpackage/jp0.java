package defpackage;

import kotlin.Result;
import kotlin.c;

public abstract class jp0 {
    static {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m286isSuccessimpl(objM279constructorimpl)) {
            objM279constructorimpl = Boolean.TRUE;
        }
        Object objM279constructorimpl2 = Result.m279constructorimpl(objM279constructorimpl);
        Boolean bool = Boolean.FALSE;
        if (Result.m285isFailureimpl(objM279constructorimpl2)) {
            objM279constructorimpl2 = bool;
        }
        ((Boolean) objM279constructorimpl2).booleanValue();
    }

    public static final ip0 a(e74 e74Var) {
        y45.j(e74Var, "compute");
        return new ge1(e74Var);
    }
}
