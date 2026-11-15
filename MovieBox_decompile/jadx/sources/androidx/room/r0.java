package androidx.room;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class r0 {
    public static final Object b(r rVar, String str, Continuation continuation) {
        Object objD = rVar.d(str, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(r0.c((y3.e) obj));
            }
        }, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f64096a;
    }

    public static final boolean c(y3.e it) {
        Intrinsics.h(it, "it");
        return it.C0();
    }
}
