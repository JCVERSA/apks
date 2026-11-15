package androidx.compose.ui;

import androidx.compose.ui.unit.LayoutDirection;
import o0.q;
import o0.t;

public final class c implements androidx.compose.ui.b {

    private final float f3795b;

    private final float f3796c;

    public static final class a implements androidx.compose.ui.b.InterfaceC0036b {

        private final float f3797a;

        public a(float f10) {
            this.f3797a = f10;
        }

        @Override
        public int a(int i10, int i11, LayoutDirection layoutDirection) {
            return Math.round(((i11 - i10) / 2.0f) * (1 + (layoutDirection == LayoutDirection.Ltr ? this.f3797a : (-1) * this.f3797a)));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Float.compare(this.f3797a, ((a) obj).f3797a) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f3797a);
        }

        public String toString() {
            return "Horizontal(bias=" + this.f3797a + ')';
        }
    }

    public static final class b implements androidx.compose.ui.b.c {

        private final float f3798a;

        public b(float f10) {
            this.f3798a = f10;
        }

        @Override
        public int a(int i10, int i11) {
            return Math.round(((i11 - i10) / 2.0f) * (1 + this.f3798a));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Float.compare(this.f3798a, ((b) obj).f3798a) == 0;
        }

        public int hashCode() {
            return Float.floatToIntBits(this.f3798a);
        }

        public String toString() {
            return "Vertical(bias=" + this.f3798a + ')';
        }
    }

    public c(float f10, float f11) {
        this.f3795b = f10;
        this.f3796c = f11;
    }

    @Override
    public long a(long j10, long j11, LayoutDirection layoutDirection) {
        float fG = (t.g(j11) - t.g(j10)) / 2.0f;
        float f10 = (t.f(j11) - t.f(j10)) / 2.0f;
        float f11 = 1;
        return q.a(Math.round(fG * ((layoutDirection == LayoutDirection.Ltr ? this.f3795b : (-1) * this.f3795b) + f11)), Math.round(f10 * (f11 + this.f3796c)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Float.compare(this.f3795b, cVar.f3795b) == 0 && Float.compare(this.f3796c, cVar.f3796c) == 0;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f3795b) * 31) + Float.floatToIntBits(this.f3796c);
    }

    public String toString() {
        return "BiasAlignment(horizontalBias=" + this.f3795b + ", verticalBias=" + this.f3796c + ')';
    }
}
