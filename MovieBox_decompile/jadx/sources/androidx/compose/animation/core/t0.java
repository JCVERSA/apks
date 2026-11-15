package androidx.compose.animation.core;

import kotlin.jvm.functions.Function1;

final class t0 implements s0 {

    private final Function1 f2186a;

    private final Function1 f2187b;

    public t0(Function1 function1, Function1 function2) {
        this.f2186a = function1;
        this.f2187b = function2;
    }

    @Override
    public Function1 a() {
        return this.f2186a;
    }

    @Override
    public Function1 b() {
        return this.f2187b;
    }
}
