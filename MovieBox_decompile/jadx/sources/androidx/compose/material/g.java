package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    private final long f3101a;

    private final androidx.compose.material.ripple.c f3102b;

    public g(long j10, androidx.compose.material.ripple.c cVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, cVar);
    }

    public final long a() {
        return this.f3101a;
    }

    public final androidx.compose.material.ripple.c b() {
        return this.f3102b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return u1.m(this.f3101a, gVar.f3101a) && Intrinsics.c(this.f3102b, gVar.f3102b);
    }

    public int hashCode() {
        int iS = u1.s(this.f3101a) * 31;
        androidx.compose.material.ripple.c cVar = this.f3102b;
        return iS + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "RippleConfiguration(color=" + ((Object) u1.t(this.f3101a)) + ", rippleAlpha=" + this.f3102b + ')';
    }

    private g(long j10, androidx.compose.material.ripple.c cVar) {
        this.f3101a = j10;
        this.f3102b = cVar;
    }

    public g(long j10, androidx.compose.material.ripple.c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? u1.f4349b.e() : j10, (i10 & 2) != 0 ? null : cVar, null);
    }
}
