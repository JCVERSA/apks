package com.facebook.ads.redexgen.core;

public final class C7I {
    public final long A00;
    public final long A01;
    public static final C7I A04 = new C7I(0, 0);
    public static final C7I A02 = new C7I(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final C7I A06 = new C7I(Long.MAX_VALUE, 0);
    public static final C7I A05 = new C7I(0, Long.MAX_VALUE);
    public static final C7I A03 = A04;

    public C7I(long j, long j2) {
        C3M.A07(j >= 0);
        C3M.A07(j2 >= 0);
        this.A01 = j;
        this.A00 = j2;
    }

    public final long A00(long minPositionUs, long j, long j2) {
        if (this.A01 == 0 && this.A00 == 0) {
            return minPositionUs;
        }
        long jA0V = AbstractC06244a.A0V(minPositionUs, this.A01, Long.MIN_VALUE);
        long jA0S = AbstractC06244a.A0S(minPositionUs, this.A00, Long.MAX_VALUE);
        boolean z = true;
        boolean z2 = jA0V <= j && j <= jA0S;
        if (jA0V > j2 || j2 > jA0S) {
            z = false;
        }
        if (z2 && z) {
            long jAbs = Math.abs(j - minPositionUs);
            long maxPositionUs = Math.abs(j2 - minPositionUs);
            if (jAbs <= maxPositionUs) {
                return j;
            }
            return j2;
        }
        if (z2) {
            return j;
        }
        if (z) {
            return j2;
        }
        return jA0V;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C7I c7i = (C7I) obj;
        return this.A01 == c7i.A01 && this.A00 == c7i.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
