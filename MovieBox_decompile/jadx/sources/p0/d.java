package p0;

public final class d {

    public static final d f68961a = new d();

    private d() {
    }

    public final float a(float f10, float f11, float f12, float f13, float f14) {
        return b(f10, f11, Math.max(0.0f, Math.min(1.0f, c(f12, f13, f14))));
    }

    public final float b(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    public final float c(float f10, float f11, float f12) {
        if (f10 == f11) {
            return 0.0f;
        }
        return (f12 - f10) / (f11 - f10);
    }
}
