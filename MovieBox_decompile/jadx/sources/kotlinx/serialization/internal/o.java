package kotlinx.serialization.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public abstract class o {

    private static final boolean f65206a;

    static {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(Class.forName("java.lang.ClassValue"));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            objM453constructorimpl = Boolean.TRUE;
        }
        Object objM453constructorimpl2 = Result.m453constructorimpl(objM453constructorimpl);
        Boolean bool = Boolean.FALSE;
        if (Result.m459isFailureimpl(objM453constructorimpl2)) {
            objM453constructorimpl2 = bool;
        }
        f65206a = ((Boolean) objM453constructorimpl2).booleanValue();
    }

    public static final x1 a(Function1 factory) {
        Intrinsics.h(factory, "factory");
        return f65206a ? new t(factory) : new y(factory);
    }

    public static final j1 b(Function2 factory) {
        Intrinsics.h(factory, "factory");
        return f65206a ? new v(factory) : new z(factory);
    }
}
