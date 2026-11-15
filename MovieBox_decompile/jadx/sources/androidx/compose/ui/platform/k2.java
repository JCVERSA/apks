package androidx.compose.ui.platform;

import kotlin.jvm.internal.Intrinsics;

public final class k2 {

    private final String f5529a;

    private final Object f5530b;

    public k2(String str, Object obj) {
        this.f5529a = str;
        this.f5530b = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k2)) {
            return false;
        }
        k2 k2Var = (k2) obj;
        return Intrinsics.c(this.f5529a, k2Var.f5529a) && Intrinsics.c(this.f5530b, k2Var.f5530b);
    }

    public int hashCode() {
        int iHashCode = this.f5529a.hashCode() * 31;
        Object obj = this.f5530b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public String toString() {
        return "ValueElement(name=" + this.f5529a + ", value=" + this.f5530b + ')';
    }
}
