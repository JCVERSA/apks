package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

final class y1 extends s0 {

    private final Continuation f65046a;

    public y1(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.f65046a = IntrinsicsKt.a(function2, this, this);
    }

    @Override
    protected void onStart() throws Throwable {
        py.a.b(this.f65046a, this);
    }
}
