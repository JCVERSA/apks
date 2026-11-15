package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

public abstract class y {

    private static final StackTraceElement f64919a = new b.a().a();

    private static final String f64920b;

    private static final String f64921c;

    static {
        Object objM453constructorimpl;
        Object objM453constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f64920b = (String) objM453constructorimpl;
        try {
            objM453constructorimpl2 = Result.m453constructorimpl(y.class.getCanonicalName());
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th3));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl2) != null) {
            objM453constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f64921c = (String) objM453constructorimpl2;
    }

    public static final Throwable a(Throwable th2) {
        return th2;
    }
}
