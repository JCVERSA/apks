package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

public final class p0 {

    private final Object f3560a;

    private final Object f3561b;

    public p0(Object obj, Object obj2) {
        this.f3560a = obj;
        this.f3561b = obj2;
    }

    private final int a(Object obj) {
        if (obj instanceof Enum) {
            return ((Enum) obj).ordinal();
        }
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p0)) {
            return false;
        }
        p0 p0Var = (p0) obj;
        return Intrinsics.c(this.f3560a, p0Var.f3560a) && Intrinsics.c(this.f3561b, p0Var.f3561b);
    }

    public int hashCode() {
        return (a(this.f3560a) * 31) + a(this.f3561b);
    }

    public String toString() {
        return "JoinedKey(left=" + this.f3560a + ", right=" + this.f3561b + ')';
    }
}
