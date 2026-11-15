package rm;

import androidx.compose.foundation.e;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c {

    private boolean f71268a;

    private boolean f71269b;

    /* JADX WARN: Illegal instructions before constructor call */
    public c() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public final boolean a() {
        return this.f71268a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f71268a == cVar.f71268a && this.f71269b == cVar.f71269b;
    }

    public int hashCode() {
        return (e.a(this.f71268a) * 31) + e.a(this.f71269b);
    }

    public String toString() {
        return "LocalParam(isSubMoreTipBean=" + this.f71268a + ", isSubMoreLoading=" + this.f71269b + ")";
    }

    public c(boolean z10, boolean z11) {
        this.f71268a = z10;
        this.f71269b = z11;
    }

    public c(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11);
    }
}
