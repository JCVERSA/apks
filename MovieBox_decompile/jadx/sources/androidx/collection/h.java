package androidx.collection;

public abstract class h {
    public static long a(float f10, float f11) {
        return b((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }

    public static long b(long j10) {
        return j10;
    }
}
