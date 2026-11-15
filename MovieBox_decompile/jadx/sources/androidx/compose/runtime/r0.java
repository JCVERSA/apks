package androidx.compose.runtime;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt__JobKt;

public final class r0 implements b2 {

    private final Function2 f3568a;

    private final kotlinx.coroutines.n0 f3569b;

    private kotlinx.coroutines.t1 f3570c;

    public r0(CoroutineContext coroutineContext, Function2 function2) {
        this.f3568a = function2;
        this.f3569b = kotlinx.coroutines.o0.a(coroutineContext);
    }

    @Override
    public void onAbandoned() {
        kotlinx.coroutines.t1 t1Var = this.f3570c;
        if (t1Var != null) {
            t1Var.cancel(new LeftCompositionCancellationException());
        }
        this.f3570c = null;
    }

    @Override
    public void onForgotten() {
        kotlinx.coroutines.t1 t1Var = this.f3570c;
        if (t1Var != null) {
            t1Var.cancel(new LeftCompositionCancellationException());
        }
        this.f3570c = null;
    }

    @Override
    public void onRemembered() {
        kotlinx.coroutines.t1 t1Var = this.f3570c;
        if (t1Var != null) {
            JobKt__JobKt.f(t1Var, "Old job was still running!", null, 2, null);
        }
        this.f3570c = kotlinx.coroutines.k.d(this.f3569b, null, null, this.f3568a, 3, null);
    }
}
