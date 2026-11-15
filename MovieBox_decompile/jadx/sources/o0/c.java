package o0;

import kotlin.KotlinNothingValueException;
import kotlin.ranges.RangesKt;

public abstract class c {
    public static final long a(int i10, int i11, int i12, int i13) {
        boolean z10 = false;
        if (!(i11 >= i10)) {
            o.a("maxWidth(" + i11 + ") must be >= than minWidth(" + i10 + ')');
        }
        if (!(i13 >= i12)) {
            o.a("maxHeight(" + i13 + ") must be >= than minHeight(" + i12 + ')');
        }
        if (i10 >= 0 && i12 >= 0) {
            z10 = true;
        }
        if (!z10) {
            o.a("minWidth(" + i10 + ") and minHeight(" + i12 + ") must be >= 0");
        }
        return j(i10, i11, i12, i13);
    }

    public static long b(int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = 0;
        }
        if ((i14 & 2) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        if ((i14 & 4) != 0) {
            i12 = 0;
        }
        if ((i14 & 8) != 0) {
            i13 = Integer.MAX_VALUE;
        }
        return a(i10, i11, i12, i13);
    }

    private static final int d(int i10, int i11) {
        return i10 == Integer.MAX_VALUE ? i10 : RangesKt.e(i10 + i11, 0);
    }

    private static final int e(int i10) {
        if (i10 < 8191) {
            return 13;
        }
        if (i10 < 32767) {
            return 15;
        }
        if (i10 < 65535) {
            return 16;
        }
        return i10 < 262143 ? 18 : 255;
    }

    public static final long f(long j10, long j11) {
        return u.a(RangesKt.l(t.g(j11), b.n(j10), b.l(j10)), RangesKt.l(t.f(j11), b.m(j10), b.k(j10)));
    }

    public static final long g(long j10, long j11) {
        return a(RangesKt.l(b.n(j11), b.n(j10), b.l(j10)), RangesKt.l(b.l(j11), b.n(j10), b.l(j10)), RangesKt.l(b.m(j11), b.m(j10), b.k(j10)), RangesKt.l(b.k(j11), b.m(j10), b.k(j10)));
    }

    public static final int h(long j10, int i10) {
        return RangesKt.l(i10, b.m(j10), b.k(j10));
    }

    public static final int i(long j10, int i10) {
        return RangesKt.l(i10, b.n(j10), b.l(j10));
    }

    public static final long j(int i10, int i11, int i12, int i13) {
        int i14 = i13 == Integer.MAX_VALUE ? i12 : i13;
        int iE = e(i14);
        int i15 = i11 == Integer.MAX_VALUE ? i10 : i11;
        int iE2 = e(i15);
        if (iE + iE2 > 31) {
            k(i15, i14);
        }
        int i16 = i11 + 1;
        int i17 = i16 & (~(i16 >> 31));
        int i18 = i13 + 1;
        int i19 = i18 & (~(i18 >> 31));
        int i20 = 0;
        if (iE2 != 13) {
            if (iE2 == 18) {
                i20 = 3;
            } else if (iE2 == 15) {
                i20 = 1;
            } else if (iE2 == 16) {
                i20 = 2;
            }
        }
        int i21 = ((i20 & 1) << 1) + (((i20 & 2) >> 1) * 3);
        return b.b((((long) i17) << 33) | ((long) i20) | (((long) i10) << 2) | (((long) i12) << (i21 + 15)) | (((long) i19) << (i21 + 46)));
    }

    private static final void k(int i10, int i11) {
        throw new IllegalArgumentException("Can't represent a width of " + i10 + " and height of " + i11 + " in Constraints");
    }

    private static final Void l(int i10) {
        throw new IllegalArgumentException("Can't represent a size of " + i10 + " in Constraints");
    }

    public static final int m(int i10) {
        if (i10 < 8191) {
            return 262142;
        }
        if (i10 < 32767) {
            return 65534;
        }
        if (i10 < 65535) {
            return 32766;
        }
        if (i10 < 262143) {
            return 8190;
        }
        l(i10);
        throw new KotlinNothingValueException();
    }

    public static final long n(long j10, int i10, int i11) {
        return a(RangesKt.e(b.n(j10) + i10, 0), d(b.l(j10), i10), RangesKt.e(b.m(j10) + i11, 0), d(b.k(j10), i11));
    }
}
