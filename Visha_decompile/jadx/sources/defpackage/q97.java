package defpackage;

public final class q97 {
    public static final q97 a = new q97();

    public final float a(float f) {
        if (f >= 34560.0f) {
            return 260.0f;
        }
        if (f <= 2304.0f) {
            return 580.0f;
        }
        return 580.0f - (((f - 2304.0f) / 32256.0f) * 320.0f);
    }
}
