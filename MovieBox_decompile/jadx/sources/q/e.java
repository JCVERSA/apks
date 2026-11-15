package q;

import y.m;

final class e implements b {

    private final float f69320a;

    public e(float f10) {
        this.f69320a = f10;
        if (f10 < 0.0f || f10 > 100.0f) {
            throw new IllegalArgumentException("The percent should be in the range of [0, 100]");
        }
    }

    @Override
    public float a(long j10, o0.e eVar) {
        return m.h(j10) * (this.f69320a / 100.0f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && Float.compare(this.f69320a, ((e) obj).f69320a) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f69320a);
    }

    public String toString() {
        return "CornerSize(size = " + this.f69320a + "%)";
    }
}
