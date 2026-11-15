package androidx.compose.material;

import androidx.compose.foundation.b0;
import androidx.compose.foundation.w;
import androidx.compose.foundation.y;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

final class i implements b0 {

    private final boolean f3104a;

    private final float f3105b;

    private final x1 f3106c;

    private final long f3107d;

    static final class a implements x1 {
        a() {
        }

        @Override
        public final long a() {
            return i.this.f3107d;
        }
    }

    public i(boolean z10, float f10, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f10, j10);
    }

    @Override
    public y a(p.g gVar, androidx.compose.runtime.i iVar, int i10) {
        return w.a(this, gVar, iVar, i10);
    }

    @Override
    public androidx.compose.ui.node.f b(p.g gVar) {
        x1 aVar = this.f3106c;
        if (aVar == null) {
            aVar = new a();
        }
        return new DelegatingThemeAwareRippleNode(gVar, this.f3104a, this.f3105b, aVar, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f3104a == iVar.f3104a && o0.i.i(this.f3105b, iVar.f3105b) && Intrinsics.c(this.f3106c, iVar.f3106c)) {
            return u1.m(this.f3107d, iVar.f3107d);
        }
        return false;
    }

    public int hashCode() {
        int iA = ((androidx.compose.foundation.e.a(this.f3104a) * 31) + o0.i.j(this.f3105b)) * 31;
        x1 x1Var = this.f3106c;
        return ((iA + (x1Var != null ? x1Var.hashCode() : 0)) * 31) + u1.s(this.f3107d);
    }

    private i(boolean z10, float f10, x1 x1Var, long j10) {
        this.f3104a = z10;
        this.f3105b = f10;
        this.f3106c = x1Var;
        this.f3107d = j10;
    }

    private i(boolean z10, float f10, long j10) {
        this(z10, f10, (x1) null, j10);
    }
}
