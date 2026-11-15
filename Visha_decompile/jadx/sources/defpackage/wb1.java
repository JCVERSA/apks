package defpackage;

import kotlin.Result;
import kotlin.c;

public abstract class wb1 {
    public static final Object a(Object obj, wh1 wh1Var) {
        if (!(obj instanceof vb1)) {
            return Result.m279constructorimpl(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m279constructorimpl(c.a(((vb1) obj).a));
    }

    public static final Object b(Object obj) {
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(obj);
        return thM282exceptionOrNullimpl == null ? obj : new vb1(thM282exceptionOrNullimpl, false, 2, null);
    }

    public static final Object c(Object obj, cr0 cr0Var) {
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(obj);
        return thM282exceptionOrNullimpl == null ? obj : new vb1(thM282exceptionOrNullimpl, false, 2, null);
    }
}
