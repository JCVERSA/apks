package androidx.compose.animation.core;

public abstract class n0 {

    private static final float f2168a = Float.MAX_VALUE;

    public static final long a(float f10, float f11) {
        return i0.a((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }

    public static final float b() {
        return f2168a;
    }
}
