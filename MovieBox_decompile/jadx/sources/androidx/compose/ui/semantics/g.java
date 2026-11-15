package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function0;

public final class g {

    private final Function0 f5664a;

    private final Function0 f5665b;

    private final boolean f5666c;

    public g(Function0 function0, Function0 function1, boolean z10) {
        this.f5664a = function0;
        this.f5665b = function1;
        this.f5666c = z10;
    }

    public final Function0 a() {
        return this.f5665b;
    }

    public final boolean b() {
        return this.f5666c;
    }

    public final Function0 c() {
        return this.f5664a;
    }

    public String toString() {
        return "ScrollAxisRange(value=" + ((Number) this.f5664a.invoke()).floatValue() + ", maxValue=" + ((Number) this.f5665b.invoke()).floatValue() + ", reverseScrolling=" + this.f5666c + ')';
    }
}
