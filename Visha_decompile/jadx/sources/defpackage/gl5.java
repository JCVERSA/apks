package defpackage;

public abstract class gl5 {
    public static final float a(float f, float f2, float f3) {
        return Math.abs(f2 - f) <= f3 ? f2 : f;
    }

    public static float b(float f, float f2, float f3, int i, Object obj) {
        if ((i & 2) != 0) {
            f3 = 1.0E-4f;
        }
        return a(f, f2, f3);
    }
}
