package defpackage;

public abstract class ut7 {
    public static float a(float f, float f2, int i) {
        if (Float.compare(f2, 0.0f) == 0) {
            return 0.0f;
        }
        return ((float) Math.pow(1.0f - ((Math.abs(f) - Math.abs(f2)) / i), 4.0d)) * 0.6f;
    }
}
