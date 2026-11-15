package androidx.compose.foundation;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public final class d0 implements f0 {

    public static final d0 f2312a = new d0();

    private d0() {
    }

    @Override
    public boolean a() {
        return false;
    }

    @Override
    public androidx.compose.ui.f b() {
        return androidx.compose.ui.f.f3869a;
    }

    @Override
    public long c(long j10, int i10, Function1 function1) {
        return ((y.g) function1.invoke(y.g.d(j10))).v();
    }

    @Override
    public Object d(long j10, Function2 function2, Continuation continuation) {
        Object objInvoke = function2.invoke(o0.z.b(j10), continuation);
        return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f64096a;
    }
}
