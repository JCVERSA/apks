package defpackage;

public abstract class s81 {
    public static final double a(int i) {
        if (i < 0 || i >= 256) {
            throw new IllegalArgumentException("Value out of channel range 0..255");
        }
        return ((double) i) / ((double) 255.0f);
    }

    public static final int b(double d) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException();
        }
        return (int) ((d * ((double) 255.0f)) + ((double) 0.5f));
    }
}
