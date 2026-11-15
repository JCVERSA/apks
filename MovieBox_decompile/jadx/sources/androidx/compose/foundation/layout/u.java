package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u implements t {

    private final float f2573a;

    private final float f2574b;

    private final float f2575c;

    private final float f2576d;

    public u(float f10, float f11, float f12, float f13, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13);
    }

    @Override
    public float a() {
        return this.f2576d;
    }

    @Override
    public float b(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.f2573a : this.f2575c;
    }

    @Override
    public float c(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.f2575c : this.f2573a;
    }

    @Override
    public float d() {
        return this.f2574b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return o0.i.i(this.f2573a, uVar.f2573a) && o0.i.i(this.f2574b, uVar.f2574b) && o0.i.i(this.f2575c, uVar.f2575c) && o0.i.i(this.f2576d, uVar.f2576d);
    }

    public int hashCode() {
        return (((((o0.i.j(this.f2573a) * 31) + o0.i.j(this.f2574b)) * 31) + o0.i.j(this.f2575c)) * 31) + o0.i.j(this.f2576d);
    }

    public String toString() {
        return "PaddingValues(start=" + ((Object) o0.i.k(this.f2573a)) + ", top=" + ((Object) o0.i.k(this.f2574b)) + ", end=" + ((Object) o0.i.k(this.f2575c)) + ", bottom=" + ((Object) o0.i.k(this.f2576d)) + ')';
    }

    private u(float f10, float f11, float f12, float f13) {
        this.f2573a = f10;
        this.f2574b = f11;
        this.f2575c = f12;
        this.f2576d = f13;
        if (f10 < 0.0f) {
            throw new IllegalArgumentException("Start padding must be non-negative");
        }
        if (f11 < 0.0f) {
            throw new IllegalArgumentException("Top padding must be non-negative");
        }
        if (f12 < 0.0f) {
            throw new IllegalArgumentException("End padding must be non-negative");
        }
        if (f13 < 0.0f) {
            throw new IllegalArgumentException("Bottom padding must be non-negative");
        }
    }
}
