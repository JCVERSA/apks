package androidx.compose.ui.layout;

public abstract class m0 {
    public static final long a(float f10, float f11) {
        return l0.a((((long) Float.floatToRawIntBits(f11)) & 4294967295L) | (Float.floatToRawIntBits(f10) << 32));
    }

    public static final long b(long j10, long j11) {
        return y.n.a(y.m.i(j10) * l0.b(j11), y.m.g(j10) * l0.c(j11));
    }
}
