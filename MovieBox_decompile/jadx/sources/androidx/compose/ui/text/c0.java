package androidx.compose.ui.text;

import kotlin.ranges.RangesKt;

public abstract class c0 {
    public static final long a(int i10) {
        return b(i10, i10);
    }

    public static final long b(int i10, int i11) {
        return b0.c(d(i10, i11));
    }

    public static final long c(long j10, int i10, int i11) {
        int iL = RangesKt.l(b0.k(j10), i10, i11);
        int iL2 = RangesKt.l(b0.g(j10), i10, i11);
        return (iL == b0.k(j10) && iL2 == b0.g(j10)) ? j10 : b(iL, iL2);
    }

    private static final long d(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("start cannot be negative. [start: " + i10 + ", end: " + i11 + ']').toString());
        }
        if (i11 >= 0) {
            return (((long) i11) & 4294967295L) | (((long) i10) << 32);
        }
        throw new IllegalArgumentException(("end cannot be negative. [start: " + i10 + ", end: " + i11 + ']').toString());
    }
}
