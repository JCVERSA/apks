package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

public final class c3 implements g3 {

    private final Object f3368a;

    public c3(Object obj) {
        this.f3368a = obj;
    }

    @Override
    public Object a(n1 n1Var) {
        return this.f3368a;
    }

    public final Object b() {
        return this.f3368a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c3) && Intrinsics.c(this.f3368a, ((c3) obj).f3368a);
    }

    public int hashCode() {
        Object obj = this.f3368a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "StaticValueHolder(value=" + this.f3368a + ')';
    }
}
