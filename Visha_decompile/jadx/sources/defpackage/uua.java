package defpackage;

public class uua {
    public float a;
    public volatile float b;
    public volatile boolean c;
    public float d;
    public float e = 0.2f;
    public float f = 0.125f;

    public static final float a(float f, float f2, float f3) {
        if (f == f2) {
            return f2;
        }
        float f4 = ((f2 - f) * f3) + f;
        if (Math.abs(f4 - f) < 1.0E-4f || f4 == f) {
            return f2;
        }
        if (f <= f2 || f4 >= f2) {
            return (f >= f2 || f4 <= f2) ? f4 : f2;
        }
        return f2;
    }

    public static final float b(float f, float f2, float f3, float f4, float f5) {
        float f6 = f2 - f;
        if (Math.abs(f6) <= f5) {
            return f2;
        }
        float fA = a(f, (f4 * f6) + f, f3);
        return Math.abs(fA - f) < f5 ? f + (Math.signum(f6) * f5) : fA;
    }

    public final void c(float f) {
        if (f != 0.0f) {
            float fAbs = Math.abs(f * this.f);
            this.d = fAbs;
            if (fAbs < 1.0E-4f) {
                this.d = 1.0E-4f;
            }
        }
    }

    public final void d() {
        this.c = false;
        this.b = this.a;
    }

    public boolean e() {
        return this.c;
    }

    public final boolean f(float f) {
        if (this.c) {
            this.b = b(this.b, this.a, f, this.e, this.d);
            this.c = this.b != this.a;
        }
        return this.c;
    }

    public final float getAnimatedValue() {
        return this.b;
    }

    public final float getTargValue() {
        return this.a;
    }

    public final void set(float f) {
        this.c = false;
        this.b = f;
        this.a = f;
    }

    public final void setMaxSpeedFractor(float f) {
        this.e = f;
    }

    public final void setMinSpeedFractor(float f) {
        this.f = f;
    }

    public final void setTargValue(float f) {
        if (this.a != f) {
            this.a = f;
            c(f - this.b);
            this.c = true;
        }
    }
}
