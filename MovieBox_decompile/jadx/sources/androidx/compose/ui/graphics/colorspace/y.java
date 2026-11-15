package androidx.compose.ui.graphics.colorspace;

public final class y {

    private final float f4116a;

    private final float f4117b;

    public y(float f10, float f11) {
        this.f4116a = f10;
        this.f4117b = f11;
    }

    public final float a() {
        return this.f4116a;
    }

    public final float b() {
        return this.f4117b;
    }

    public final float[] c() {
        float f10 = this.f4116a;
        float f11 = this.f4117b;
        return new float[]{f10 / f11, 1.0f, ((1.0f - f10) - f11) / f11};
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return Float.compare(this.f4116a, yVar.f4116a) == 0 && Float.compare(this.f4117b, yVar.f4117b) == 0;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f4116a) * 31) + Float.floatToIntBits(this.f4117b);
    }

    public String toString() {
        return "WhitePoint(x=" + this.f4116a + ", y=" + this.f4117b + ')';
    }

    public y(float f10, float f11, float f12) {
        this(f10, f11, f12, f10 + f11 + f12);
    }

    private y(float f10, float f11, float f12, float f13) {
        this(f10 / f13, f11 / f13);
    }
}
