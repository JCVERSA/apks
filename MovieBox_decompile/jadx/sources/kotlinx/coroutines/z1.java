package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;

final class z1 extends i2 {

    private final Continuation f65048a;

    public z1(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.f65048a = IntrinsicsKt.a(function2, this, this);
    }

    @Override
    protected void onStart() throws Throwable {
        py.a.b(this.f65048a, this);
    }
}
