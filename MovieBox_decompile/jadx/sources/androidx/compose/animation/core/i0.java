package androidx.compose.animation.core;

public abstract class i0 {
    public static final float b(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final float c(long j10) {
        return Float.intBitsToFloat((int) (j10 & 4294967295L));
    }

    public static long a(long j10) {
        return j10;
    }
}
