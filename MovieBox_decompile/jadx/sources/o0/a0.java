package o0;

public abstract class a0 {
    public static final long a(float f10, float f11) {
        return z.c((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }
}
