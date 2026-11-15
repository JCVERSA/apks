package androidx.compose.material;

import androidx.compose.runtime.a3;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

final class RangeSliderLogic {

    private final p.i f3054a;

    private final p.i f3055b;

    private final a3 f3056c;

    private final a3 f3057d;

    private final a3 f3058e;

    public RangeSliderLogic(p.i iVar, p.i iVar2, a3 a3Var, a3 a3Var2, a3 a3Var3) {
        this.f3054a = iVar;
        this.f3055b = iVar2;
        this.f3056c = a3Var;
        this.f3057d = a3Var2;
        this.f3058e = a3Var3;
    }

    public final p.i a(boolean z10) {
        return z10 ? this.f3054a : this.f3055b;
    }

    public final void b(boolean z10, float f10, p.f fVar, n0 n0Var) {
        ((Function2) this.f3058e.getValue()).invoke(Boolean.valueOf(z10), Float.valueOf(f10 - ((Number) (z10 ? this.f3056c : this.f3057d).getValue()).floatValue()));
        kotlinx.coroutines.k.d(n0Var, null, null, new RangeSliderLogic$captureThumb$1(this, z10, fVar, null), 3, null);
    }

    public final int c(float f10) {
        return Float.compare(Math.abs(((Number) this.f3056c.getValue()).floatValue() - f10), Math.abs(((Number) this.f3057d.getValue()).floatValue() - f10));
    }
}
