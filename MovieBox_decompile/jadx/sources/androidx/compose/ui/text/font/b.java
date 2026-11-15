package androidx.compose.ui.text.font;

import kotlin.ranges.RangesKt;

public final class b implements w {

    private final int f5803b;

    public b(int i10) {
        this.f5803b = i10;
    }

    @Override
    public p a(p pVar) {
        int i10 = this.f5803b;
        return (i10 == 0 || i10 == Integer.MAX_VALUE) ? pVar : new p(RangesKt.l(pVar.h() + this.f5803b, 1, 1000));
    }

    @Override
    public int b(int i10) {
        return v.b(this, i10);
    }

    @Override
    public int c(int i10) {
        return v.c(this, i10);
    }

    @Override
    public h d(h hVar) {
        return v.a(this, hVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f5803b == ((b) obj).f5803b;
    }

    public int hashCode() {
        return this.f5803b;
    }

    public String toString() {
        return "AndroidFontResolveInterceptor(fontWeightAdjustment=" + this.f5803b + ')';
    }
}
