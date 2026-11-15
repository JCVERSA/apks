package o0;

import kotlin.jvm.internal.Intrinsics;

final class h implements e {

    private final float f67401a;

    private final float f67402b;

    private final p0.a f67403c;

    public h(float f10, float f11, p0.a aVar) {
        this.f67401a = f10;
        this.f67402b = f11;
        this.f67403c = aVar;
    }

    @Override
    public float B0() {
        return this.f67402b;
    }

    @Override
    public float D0(float f10) {
        return d.d(this, f10);
    }

    @Override
    public long H(float f10) {
        return x.b(this.f67403c.a(f10));
    }

    @Override
    public float J(long j10) {
        if (y.g(w.g(j10), y.f67433b.b())) {
            return i.g(this.f67403c.b(w.h(j10)));
        }
        throw new IllegalStateException("Only Sp can convert to Px");
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
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Float.compare(this.f67401a, hVar.f67401a) == 0 && Float.compare(this.f67402b, hVar.f67402b) == 0 && Intrinsics.c(this.f67403c, hVar.f67403c);
    }

    @Override
    public float getDensity() {
        return this.f67401a;
    }

    @Override
    public float h0(long j10) {
        return d.c(this, j10);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.f67401a) * 31) + Float.floatToIntBits(this.f67402b)) * 31) + this.f67403c.hashCode();
    }

    public String toString() {
        return "DensityWithConverter(density=" + this.f67401a + ", fontScale=" + this.f67402b + ", converter=" + this.f67403c + ')';
    }

    @Override
    public float x0(float f10) {
        return d.b(this, f10);
    }
}
