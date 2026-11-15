package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;

final class b0 implements b2 {

    private final Function1 f3363a;

    private c0 f3364b;

    public b0(Function1 function1) {
        this.f3363a = function1;
    }

    @Override
    public void onForgotten() {
        c0 c0Var = this.f3364b;
        if (c0Var != null) {
            c0Var.dispose();
        }
        this.f3364b = null;
    }

    @Override
    public void onRemembered() {
        this.f3364b = (c0) this.f3363a.invoke(g0.f3424a);
    }

    @Override
    public void onAbandoned() {
    }
}
