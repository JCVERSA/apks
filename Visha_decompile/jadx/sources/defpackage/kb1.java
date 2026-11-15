package defpackage;

import kotlin.Result;
import kotlinx.coroutines.j;

public abstract class kb1 {
    public static final ib1 a(Object obj) {
        jb1 jb1Var = new jb1(null);
        jb1Var.h(obj);
        return jb1Var;
    }

    public static final ib1 b(j jVar) {
        return new jb1(jVar);
    }

    public static ib1 c(j jVar, int i, Object obj) {
        if ((i & 1) != 0) {
            jVar = null;
        }
        return b(jVar);
    }

    public static final boolean d(ib1 ib1Var, Object obj) {
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(obj);
        return thM282exceptionOrNullimpl == null ? ib1Var.h(obj) : ib1Var.g(thM282exceptionOrNullimpl);
    }
}
