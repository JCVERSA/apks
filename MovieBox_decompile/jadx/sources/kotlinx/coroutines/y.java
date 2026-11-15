package kotlinx.coroutines;

import kotlin.Result;

public abstract class y {
    public static final w a(t1 t1Var) {
        return new x(t1Var);
    }

    public static w b(t1 t1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            t1Var = null;
        }
        return a(t1Var);
    }

    public static final boolean c(w wVar, Object obj) {
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(obj);
        return thM456exceptionOrNullimpl == null ? wVar.l(obj) : wVar.b(thM456exceptionOrNullimpl);
    }
}
