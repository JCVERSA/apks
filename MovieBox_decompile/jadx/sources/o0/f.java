package o0;

final class f implements e {

    private final float f67399a;

    private final float f67400b;

    public f(float f10, float f11) {
        this.f67399a = f10;
        this.f67400b = f11;
    }

    @Override
    public float B0() {
        return this.f67400b;
    }

    @Override
    public float D0(float f10) {
        return d.d(this, f10);
    }

    @Override
    public long H(float f10) {
        return m.b(this, f10);
    }

    @Override
    public float J(long j10) {
        return m.a(this, j10);
    }

    @Override
    public long P0(long j10) {
        return d.e(this, j10);
    }

    @Override
    public long Q(float f10) {
        return d.f(this, f10);
    }

    @Override
    public int c0(float f10) {
        return d.a(this, f10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Float.compare(this.f67399a, fVar.f67399a) == 0 && Float.compare(this.f67400b, fVar.f67400b) == 0;
    }

    @Override
    public float getDensity() {
        return this.f67399a;
    }

    @Override
    public float h0(long j10) {
        return d.c(this, j10);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f67399a) * 31) + Float.floatToIntBits(this.f67400b);
    }

    public String toString() {
        return "DensityImpl(density=" + this.f67399a + ", fontScale=" + this.f67400b + ')';
    }

    @Override
    public float x0(float f10) {
        return d.b(this, f10);
    }
}
