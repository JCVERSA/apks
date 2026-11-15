package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

final class n implements h0 {

    private final h0 f2560a;

    private final h0 f2561b;

    public n(h0 h0Var, h0 h0Var2) {
        this.f2560a = h0Var;
        this.f2561b = h0Var2;
    }

    @Override
    public int a(o0.e eVar) {
        return RangesKt.e(this.f2560a.a(eVar) - this.f2561b.a(eVar), 0);
    }

    @Override
    public int b(o0.e eVar) {
        return RangesKt.e(this.f2560a.b(eVar) - this.f2561b.b(eVar), 0);
    }

    @Override
    public int c(o0.e eVar, LayoutDirection layoutDirection) {
        return RangesKt.e(this.f2560a.c(eVar, layoutDirection) - this.f2561b.c(eVar, layoutDirection), 0);
    }

    @Override
    public int d(o0.e eVar, LayoutDirection layoutDirection) {
        return RangesKt.e(this.f2560a.d(eVar, layoutDirection) - this.f2561b.d(eVar, layoutDirection), 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.c(nVar.f2560a, this.f2560a) && Intrinsics.c(nVar.f2561b, this.f2561b);
    }

    public int hashCode() {
        return (this.f2560a.hashCode() * 31) + this.f2561b.hashCode();
    }

    public String toString() {
        return '(' + this.f2560a + " - " + this.f2561b + ')';
    }
}
