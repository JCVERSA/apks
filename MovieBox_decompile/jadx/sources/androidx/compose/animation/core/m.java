package androidx.compose.animation.core;

public final class m extends o {

    private float f2152a;

    private float f2153b;

    private float f2154c;

    private final int f2155d;

    public m(float f10, float f11, float f12) {
        super(null);
        this.f2152a = f10;
        this.f2153b = f11;
        this.f2154c = f12;
        this.f2155d = 3;
    }

    @Override
    public float a(int i10) {
        if (i10 == 0) {
            return this.f2152a;
        }
        if (i10 == 1) {
            return this.f2153b;
        }
        if (i10 != 2) {
            return 0.0f;
        }
        return this.f2154c;
    }

    @Override
    public int b() {
        return this.f2155d;
    }

    @Override
    public void d() {
        this.f2152a = 0.0f;
        this.f2153b = 0.0f;
        this.f2154c = 0.0f;
    }

    @Override
    public void e(int i10, float f10) {
        if (i10 == 0) {
            this.f2152a = f10;
        } else if (i10 == 1) {
            this.f2153b = f10;
        } else {
            if (i10 != 2) {
                return;
            }
            this.f2154c = f10;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (mVar.f2152a == this.f2152a && mVar.f2153b == this.f2153b && mVar.f2154c == this.f2154c) {
                return true;
            }
        }
        return false;
    }

    @Override
    public m c() {
        return new m(0.0f, 0.0f, 0.0f);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.f2152a) * 31) + Float.floatToIntBits(this.f2153b)) * 31) + Float.floatToIntBits(this.f2154c);
    }

    public String toString() {
        return "AnimationVector3D: v1 = " + this.f2152a + ", v2 = " + this.f2153b + ", v3 = " + this.f2154c;
    }
}
