package androidx.compose.animation.core;

public final class n extends o {

    private float f2163a;

    private float f2164b;

    private float f2165c;

    private float f2166d;

    private final int f2167e;

    public n(float f10, float f11, float f12, float f13) {
        super(null);
        this.f2163a = f10;
        this.f2164b = f11;
        this.f2165c = f12;
        this.f2166d = f13;
        this.f2167e = 4;
    }

    @Override
    public float a(int i10) {
        if (i10 == 0) {
            return this.f2163a;
        }
        if (i10 == 1) {
            return this.f2164b;
        }
        if (i10 == 2) {
            return this.f2165c;
        }
        if (i10 != 3) {
            return 0.0f;
        }
        return this.f2166d;
    }

    @Override
    public int b() {
        return this.f2167e;
    }

    @Override
    public void d() {
        this.f2163a = 0.0f;
        this.f2164b = 0.0f;
        this.f2165c = 0.0f;
        this.f2166d = 0.0f;
    }

    @Override
    public void e(int i10, float f10) {
        if (i10 == 0) {
            this.f2163a = f10;
            return;
        }
        if (i10 == 1) {
            this.f2164b = f10;
        } else if (i10 == 2) {
            this.f2165c = f10;
        } else {
            if (i10 != 3) {
                return;
            }
            this.f2166d = f10;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (nVar.f2163a == this.f2163a && nVar.f2164b == this.f2164b && nVar.f2165c == this.f2165c && nVar.f2166d == this.f2166d) {
                return true;
            }
        }
        return false;
    }

    public final float f() {
        return this.f2163a;
    }

    public final float g() {
        return this.f2164b;
    }

    public final float h() {
        return this.f2165c;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f2163a) * 31) + Float.floatToIntBits(this.f2164b)) * 31) + Float.floatToIntBits(this.f2165c)) * 31) + Float.floatToIntBits(this.f2166d);
    }

    public final float i() {
        return this.f2166d;
    }

    @Override
    public n c() {
        return new n(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public String toString() {
        return "AnimationVector4D: v1 = " + this.f2163a + ", v2 = " + this.f2164b + ", v3 = " + this.f2165c + ", v4 = " + this.f2166d;
    }
}
