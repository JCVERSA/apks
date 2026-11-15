package androidx.compose.animation.core;

public final class u implements z {

    private final float f2188a;

    private final float f2189b;

    private final float f2190c;

    private final float f2191d;

    private final float f2192e;

    private final float f2193f;

    public u(float f10, float f11, float f12, float f13) {
        this.f2188a = f10;
        this.f2189b = f11;
        this.f2190c = f12;
        this.f2191d = f13;
        if (!((Float.isNaN(f10) || Float.isNaN(f11) || Float.isNaN(f12) || Float.isNaN(f13)) ? false : true)) {
            k0.a("Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: " + f10 + ", " + f11 + ", " + f12 + ", " + f13 + '.');
        }
        long jB = androidx.compose.ui.graphics.b1.b(0.0f, f11, f13, 1.0f, new float[5], 0);
        this.f2192e = Float.intBitsToFloat((int) (jB >> 32));
        this.f2193f = Float.intBitsToFloat((int) (jB & 4294967295L));
    }

    private final void b(float f10) {
        throw new IllegalArgumentException("The cubic curve with parameters (" + this.f2188a + ", " + this.f2189b + ", " + this.f2190c + ", " + this.f2191d + ") has no solution at " + f10);
    }

    @Override
    public float a(float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            return f10;
        }
        float fE = androidx.compose.ui.graphics.b1.e(0.0f - f10, this.f2188a - f10, this.f2190c - f10, 1.0f - f10);
        if (Float.isNaN(fE)) {
            b(f10);
        }
        float fC = androidx.compose.ui.graphics.b1.c(this.f2189b, this.f2191d, fE);
        float f11 = this.f2192e;
        float f12 = this.f2193f;
        if (fC < f11) {
            fC = f11;
        }
        return fC > f12 ? f12 : fC;
    }

    public boolean equals(Object obj) {
        if (obj instanceof u) {
            u uVar = (u) obj;
            if (this.f2188a == uVar.f2188a && this.f2189b == uVar.f2189b && this.f2190c == uVar.f2190c && this.f2191d == uVar.f2191d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f2188a) * 31) + Float.floatToIntBits(this.f2189b)) * 31) + Float.floatToIntBits(this.f2190c)) * 31) + Float.floatToIntBits(this.f2191d);
    }

    public String toString() {
        return "CubicBezierEasing(a=" + this.f2188a + ", b=" + this.f2189b + ", c=" + this.f2190c + ", d=" + this.f2191d + ')';
    }
}
