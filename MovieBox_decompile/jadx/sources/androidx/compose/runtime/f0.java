package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

public final class f0 implements g3 {

    private final i1 f3422a;

    public f0(i1 i1Var) {
        this.f3422a = i1Var;
    }

    @Override
    public Object a(n1 n1Var) {
        return this.f3422a.getValue();
    }

    public final i1 b() {
        return this.f3422a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f0) && Intrinsics.c(this.f3422a, ((f0) obj).f3422a);
    }

    public int hashCode() {
        return this.f3422a.hashCode();
    }

    public String toString() {
        return "DynamicValueHolder(state=" + this.f3422a + ')';
    }
}
