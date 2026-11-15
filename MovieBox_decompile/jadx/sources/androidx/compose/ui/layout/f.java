package androidx.compose.ui.layout;

public abstract class f {
    public static final float e(long j10, long j11) {
        return y.m.g(j11) / y.m.g(j10);
    }

    public static final float f(long j10, long j11) {
        return Math.max(h(j10, j11), e(j10, j11));
    }

    public static final float g(long j10, long j11) {
        return Math.min(h(j10, j11), e(j10, j11));
    }

    public static final float h(long j10, long j11) {
        return y.m.i(j11) / y.m.i(j10);
    }
}
