package androidx.compose.animation.core;

public final class k extends o {

    private float f2147a;

    private final int f2148b;

    public k(float f10) {
        super(null);
        this.f2147a = f10;
        this.f2148b = 1;
    }

    @Override
    public float a(int i10) {
        if (i10 == 0) {
            return this.f2147a;
        }
        return 0.0f;
    }

    @Override
    public int b() {
        return this.f2148b;
    }

    @Override
    public void d() {
        this.f2147a = 0.0f;
    }

    @Override
    public void e(int i10, float f10) {
        if (i10 == 0) {
            this.f2147a = f10;
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof k) && ((k) obj).f2147a == this.f2147a;
    }

    public final float f() {
        return this.f2147a;
    }

    @Override
    public k c() {
        return new k(0.0f);
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f2147a);
    }

    public String toString() {
        return "AnimationVector1D: value = " + this.f2147a;
    }
}
