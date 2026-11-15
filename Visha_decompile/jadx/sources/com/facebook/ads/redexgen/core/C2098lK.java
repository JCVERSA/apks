package com.facebook.ads.redexgen.core;

public final class C2098lK implements InterfaceC0942Gw {
    public static String[] A02 = {"1Tt6ltc55g", "ops4n6D0RsDIbcNK2iFIW7Ay7S5Nano", "QFUbJLsUaFmSVLdjzr36RpAXorrqi07i", "7FxugF0ZmqBQk4dAnarwpNTfiaTe1g6g", "N3T7HRrxqFzk5rl0dpC6S3h47ocLp3rK", "Rq3uRmlvLOcLbWX3oXceNMTvaDTByq6j", "8TmLuftHICqYkzwVWbIwZIwFPzZSJxQj", "4hmJxBFNQAJLWam3xj85pvhcrB85xjeQ"};
    public final long A00;
    public final C0927Gh A01;

    public C2098lK(C0927Gh c0927Gh, long j) {
        this.A01 = c0927Gh;
        this.A00 = j;
    }

    private C0943Gx A00(long j, long j2) {
        return new C0943Gx((1000000 * j) / ((long) this.A01.A07), this.A00 + j2);
    }

    @Override
    public final long A7l() {
        return this.A01.A06();
    }

    @Override
    public final C0941Gv A8t(long j) {
        long j2;
        C3M.A02(this.A01.A0A);
        long[] jArr = this.A01.A0A.A01;
        long[] jArr2 = this.A01.A0A.A00;
        int iA0L = AbstractC06244a.A0L(jArr, this.A01.A07(j), true, false);
        long j3 = 0;
        if (iA0L == -1) {
            j2 = 0;
        } else {
            j2 = jArr[iA0L];
        }
        if (iA0L != -1) {
            j3 = jArr2[iA0L];
        }
        C0943Gx c0943GxA00 = A00(j2, j3);
        if (c0943GxA00.A01 != j) {
            int length = jArr.length - 1;
            String[] strArr = A02;
            if (strArr[3].charAt(19) != strArr[6].charAt(19)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "o5tsTNyqew751hc5myqwVOdw8F1gICkG";
            strArr2[6] = "VidtQTuToVY7NImzxnJwSrK8bx75lEQY";
            if (iA0L != length) {
                C0943Gx secondSeekPoint = A00(jArr[iA0L + 1], jArr2[iA0L + 1]);
                return new C0941Gv(c0943GxA00, secondSeekPoint);
            }
        }
        return new C0941Gv(c0943GxA00);
    }

    @Override
    public final boolean AAa() {
        return true;
    }
}
