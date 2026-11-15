package defpackage;

import kotlin.Result;
import kotlin.c;
import kotlinx.coroutines.internal.DispatchedContinuation;

public abstract class qt1 {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(wh1 wh1Var) {
        Object objM279constructorimpl;
        if (wh1Var instanceof DispatchedContinuation) {
            return ((DispatchedContinuation) wh1Var).toString();
        }
        try {
            Result.Companion aVar = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(wh1Var + '@' + b(wh1Var));
        } catch (Throwable th) {
            Result.Companion aVar2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = wh1Var.getClass().getName() + '@' + b(wh1Var);
        }
        return (String) objM279constructorimpl;
    }
}
