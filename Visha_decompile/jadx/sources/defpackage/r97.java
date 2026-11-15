package defpackage;

public final class r97 {
    public static final r97 a = new r97();

    public final float a(float f) {
        if (f >= 34560.0f) {
            return 260.0f;
        }
        if (f <= 2304.0f) {
            return 800.0f;
        }
        return 800.0f - (((f - 2304.0f) / 32256.0f) * 540.0f);
    }
}
