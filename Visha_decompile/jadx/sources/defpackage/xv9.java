package defpackage;

import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

public abstract class xv9 {
    public static final StackTraceElement a = new ji().a();
    public static final String b;
    public static final String c;

    static {
        Object objM279constructorimpl;
        Object objM279constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        b = (String) objM279constructorimpl;
        try {
            objM279constructorimpl2 = Result.m279constructorimpl(xv9.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM279constructorimpl2 = Result.m279constructorimpl(c.a(th2));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl2) != null) {
            objM279constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        c = (String) objM279constructorimpl2;
    }

    public static final Throwable a(Throwable th) {
        return th;
    }
}
