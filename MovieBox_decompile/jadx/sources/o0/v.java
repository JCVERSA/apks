package o0;

final class v implements p0.a {

    private final float f67428a;

    public v(float f10) {
        this.f67428a = f10;
    }

    @Override
    public float a(float f10) {
        return f10 / this.f67428a;
    }

    @Override
    public float b(float f10) {
        return f10 * this.f67428a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v) && Float.compare(this.f67428a, ((v) obj).f67428a) == 0;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.f67428a);
    }

    public String toString() {
        return "LinearFontScaleConverter(fontScale=" + this.f67428a + ')';
    }
}
