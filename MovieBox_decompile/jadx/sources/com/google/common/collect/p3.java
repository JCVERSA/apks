package com.google.common.collect;

import java.util.Arrays;

class p3 extends o3 {

    transient long[] f30019i;

    private transient int f30020j;

    private transient int f30021k;

    p3(int i10) {
        this(i10, 1.0f);
    }

    private int E(int i10) {
        return (int) (this.f30019i[i10] >>> 32);
    }

    private int F(int i10) {
        return (int) this.f30019i[i10];
    }

    private void G(int i10, int i11) {
        long[] jArr = this.f30019i;
        jArr[i10] = (jArr[i10] & 4294967295L) | (((long) i11) << 32);
    }

    private void H(int i10, int i11) {
        if (i10 == -2) {
            this.f30020j = i11;
        } else {
            I(i10, i11);
        }
        if (i11 == -2) {
            this.f30021k = i10;
        } else {
            G(i11, i10);
        }
    }

    private void I(int i10, int i11) {
        long[] jArr = this.f30019i;
        jArr[i10] = (jArr[i10] & (-4294967296L)) | (((long) i11) & 4294967295L);
    }

    @Override
    public void a() {
        super.a();
        this.f30020j = -2;
        this.f30021k = -2;
    }

    @Override
    int e() {
        int i10 = this.f30020j;
        if (i10 == -2) {
            return -1;
        }
        return i10;
    }

    @Override
    void n(int i10, float f10) {
        super.n(i10, f10);
        this.f30020j = -2;
        this.f30021k = -2;
        long[] jArr = new long[i10];
        this.f30019i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override
    void o(int i10, Object obj, int i11, int i12) {
        super.o(i10, obj, i11, i12);
        H(this.f30021k, i10);
        H(i10, -2);
    }

    @Override
    void p(int i10) {
        int iC = C() - 1;
        H(E(i10), F(i10));
        if (i10 < iC) {
            H(E(iC), i10);
            H(i10, F(iC));
        }
        super.p(i10);
    }

    @Override
    int s(int i10) {
        int iF = F(i10);
        if (iF == -2) {
            return -1;
        }
        return iF;
    }

    @Override
    int t(int i10, int i11) {
        return i10 == C() ? i11 : i10;
    }

    @Override
    void y(int i10) {
        super.y(i10);
        long[] jArr = this.f30019i;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i10);
        this.f30019i = jArrCopyOf;
        Arrays.fill(jArrCopyOf, length, i10, -1L);
    }

    p3(int i10, float f10) {
        super(i10, f10);
    }
}
