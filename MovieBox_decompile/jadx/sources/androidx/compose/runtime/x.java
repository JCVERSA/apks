package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class x implements g3 {

    private final Function1 f3755a;

    public x(Function1 function1) {
        this.f3755a = function1;
    }

    @Override
    public Object a(n1 n1Var) {
        return this.f3755a.invoke(n1Var);
    }

    public final Function1 b() {
        return this.f3755a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && Intrinsics.c(this.f3755a, ((x) obj).f3755a);
    }

    public int hashCode() {
        return this.f3755a.hashCode();
    }

    public String toString() {
        return "ComputedValueHolder(compute=" + this.f3755a + ')';
    }
}
