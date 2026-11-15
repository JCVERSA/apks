package kotlinx.coroutines;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

public abstract class c0 {
    public static final Object a(Object obj, Continuation continuation) {
        if (!(obj instanceof b0)) {
            return Result.m453constructorimpl(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m453constructorimpl(ResultKt.a(((b0) obj).f64676a));
    }

    public static final Object b(Object obj) {
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(obj);
        return thM456exceptionOrNullimpl == null ? obj : new b0(thM456exceptionOrNullimpl, false, 2, null);
    }

    public static final Object c(Object obj, n nVar) {
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(obj);
        return thM456exceptionOrNullimpl == null ? obj : new b0(thM456exceptionOrNullimpl, false, 2, null);
    }
}
