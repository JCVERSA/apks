package androidx.compose.animation.core;

public final class l extends o {

    private float f2149a;

    private float f2150b;

    private final int f2151c;

    public l(float f10, float f11) {
        super(null);
        this.f2149a = f10;
        this.f2150b = f11;
        this.f2151c = 2;
    }

    @Override
    public float a(int i10) {
        if (i10 == 0) {
            return this.f2149a;
        }
        if (i10 != 1) {
            return 0.0f;
        }
        return this.f2150b;
    }

    @Override
    public int b() {
        return this.f2151c;
    }

    @Override
    public void d() {
        this.f2149a = 0.0f;
        this.f2150b = 0.0f;
    }

    @Override
    public void e(int i10, float f10) {
        if (i10 == 0) {
            this.f2149a = f10;
        } else {
            if (i10 != 1) {
                return;
            }
            this.f2150b = f10;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (lVar.f2149a == this.f2149a && lVar.f2150b == this.f2150b) {
                return true;
            }
        }
        return false;
    }

    public final float f() {
        return this.f2149a;
    }

    public final float g() {
        return this.f2150b;
    }

    @Override
    public l c() {
        return new l(0.0f, 0.0f);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f2149a) * 31) + Float.floatToIntBits(this.f2150b);
    }

    public String toString() {
        return "AnimationVector2D: v1 = " + this.f2149a + ", v2 = " + this.f2150b;
    }
}
