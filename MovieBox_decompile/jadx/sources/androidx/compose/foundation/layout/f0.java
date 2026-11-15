package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

final class f0 implements h0 {

    private final h0 f2543a;

    private final h0 f2544b;

    public f0(h0 h0Var, h0 h0Var2) {
        this.f2543a = h0Var;
        this.f2544b = h0Var2;
    }

    @Override
    public int a(o0.e eVar) {
        return Math.max(this.f2543a.a(eVar), this.f2544b.a(eVar));
    }

    @Override
    public int b(o0.e eVar) {
        return Math.max(this.f2543a.b(eVar), this.f2544b.b(eVar));
    }

    @Override
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return Math.max(this.f2543a.c(eVar, layoutDirection), this.f2544b.c(eVar, layoutDirection));
    }

    @Override
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return Math.max(this.f2543a.d(eVar, layoutDirection), this.f2544b.d(eVar, layoutDirection));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f0)) {
            return false;
        }
        f0 f0Var = (f0) obj;
        return Intrinsics.c(f0Var.f2543a, this.f2543a) && Intrinsics.c(f0Var.f2544b, this.f2544b);
    }

    public int hashCode() {
        return this.f2543a.hashCode() + (this.f2544b.hashCode() * 31);
    }

    public String toString() {
        return '(' + this.f2543a + " ∪ " + this.f2544b + ')';
    }
}
