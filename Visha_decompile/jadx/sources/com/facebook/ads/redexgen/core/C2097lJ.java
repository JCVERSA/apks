package com.facebook.ads.redexgen.core;

public final class C2097lJ implements InterfaceC0942Gw {
    public final long A00;
    public final boolean A01;
    public final long[] A02;
    public final long[] A03;

    public C2097lJ(long[] jArr, long[] jArr2, long j) {
        C3M.A07(jArr.length == jArr2.length);
        int length = jArr2.length;
        this.A01 = length > 0;
        if (this.A01 && jArr2[0] > 0) {
            int length2 = length + 1;
            this.A02 = new long[length2];
            int length3 = length + 1;
            this.A03 = new long[length3];
            System.arraycopy(jArr, 0, this.A02, 1, length);
            System.arraycopy(jArr2, 0, this.A03, 1, length);
        } else {
            this.A02 = jArr;
            this.A03 = jArr2;
        }
        this.A00 = j;
    }

    @Override
    public final long A7l() {
        return this.A00;
    }

    @Override
    public final C0941Gv A8t(long j) {
        if (!this.A01) {
            return new C0941Gv(C0943Gx.A04);
        }
        int iA0L = AbstractC06244a.A0L(this.A03, j, true, true);
        C0943Gx c0943Gx = new C0943Gx(this.A03[iA0L], this.A02[iA0L]);
        if (c0943Gx.A01 != j) {
            int targetIndex = this.A03.length;
            if (iA0L != targetIndex - 1) {
                int targetIndex2 = iA0L + 1;
                long j2 = this.A03[targetIndex2];
                int targetIndex3 = iA0L + 1;
                C0943Gx rightSeekPoint = new C0943Gx(j2, this.A02[targetIndex3]);
                return new C0941Gv(c0943Gx, rightSeekPoint);
            }
        }
        return new C0941Gv(c0943Gx);
    }

    @Override
    public final boolean AAa() {
        return this.A01;
    }
}
