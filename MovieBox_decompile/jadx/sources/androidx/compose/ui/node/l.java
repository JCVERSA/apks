package androidx.compose.ui.node;

abstract class l {
    public static final int a(long j10, long j11) {
        boolean zD = d(j10);
        if (zD != d(j11)) {
            return zD ? -1 : 1;
        }
        return (int) Math.signum(c(j10) - c(j11));
    }

    public static final float c(long j10) {
        return Float.intBitsToFloat((int) (j10 >> 32));
    }

    public static final boolean d(long j10) {
        return ((int) (j10 & 4294967295L)) != 0;
    }

    public static long b(long j10) {
        return j10;
    }
}
