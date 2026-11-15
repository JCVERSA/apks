package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class h0 extends u {

    private int f1971f;

    public h0() {
        this(0, 1, null);
    }

    private final void f() {
        if (this.f2033d <= 8 || Long.compare(ULong.b(ULong.b(this.f2034e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2033d) * 25) ^ Long.MIN_VALUE) > 0) {
            n(v0.e(this.f2033d));
        } else {
            h();
        }
    }

    private final void h() {
        long[] jArr;
        int i10;
        int i11;
        long[] jArr2 = this.f2030a;
        int i12 = this.f2033d;
        long[] jArr3 = this.f2031b;
        Object[] objArr = this.f2032c;
        v0.a(jArr2, i12);
        char c10 = 0;
        int i13 = 0;
        int iB = -1;
        while (i13 != i12) {
            int i14 = i13 >> 3;
            int i15 = (i13 & 7) << 3;
            long j10 = (jArr2[i14] >> i15) & 255;
            if (j10 == 128) {
                iB = i13;
                i13++;
            } else {
                if (j10 == 254) {
                    int iA = s.a(jArr3[i13]) * (-862048943);
                    int i16 = iA ^ (iA << 16);
                    int i17 = i16 >>> 7;
                    int iJ = j(i17);
                    int i18 = i17 & i12;
                    if (((iJ - i18) & i12) / 8 == ((i13 - i18) & i12) / 8) {
                        jArr2[i14] = (((long) (i16 & 127)) << i15) | ((~(255 << i15)) & jArr2[i14]);
                        jArr2[ArraysKt.X(jArr2)] = (jArr2[c10] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i19 = iJ >> 3;
                        long j11 = jArr2[i19];
                        int i20 = (iJ & 7) << 3;
                        if (((j11 >> i20) & 255) == 128) {
                            int i21 = i13;
                            jArr = jArr3;
                            jArr2[i19] = (j11 & (~(255 << i20))) | (((long) (i16 & 127)) << i20);
                            jArr2[i14] = (jArr2[i14] & (~(255 << i15))) | (128 << i15);
                            jArr[iJ] = jArr[i21];
                            jArr[i21] = 0;
                            objArr[iJ] = objArr[i21];
                            objArr[i21] = null;
                            i11 = i21;
                            iB = i11;
                            i10 = i12;
                        } else {
                            int i22 = i12;
                            jArr = jArr3;
                            int i23 = i13;
                            jArr2[i19] = (((long) (i16 & 127)) << i20) | (j11 & (~(255 << i20)));
                            if (iB == -1) {
                                i10 = i22;
                                iB = v0.b(jArr2, i23 + 1, i10);
                            } else {
                                i10 = i22;
                            }
                            jArr[iB] = jArr[iJ];
                            jArr[iJ] = jArr[i23];
                            jArr[i23] = jArr[iB];
                            objArr[iB] = objArr[iJ];
                            objArr[iJ] = objArr[i23];
                            objArr[i23] = objArr[iB];
                            i11 = i23 - 1;
                        }
                        c10 = 0;
                        jArr2[ArraysKt.X(jArr2)] = (jArr2[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i13 = i11 + 1;
                        i12 = i10;
                        jArr3 = jArr;
                    }
                }
                i13++;
            }
        }
        k();
    }

    private final int i(long j10) {
        int iA = s.a(j10) * (-862048943);
        int i10 = iA ^ (iA << 16);
        int i11 = i10 >>> 7;
        int i12 = i10 & 127;
        int i13 = this.f2033d;
        int i14 = i11 & i13;
        int i15 = 0;
        while (true) {
            long[] jArr = this.f2030a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j11 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j12 = i12;
            int i18 = i15;
            long j13 = j11 ^ (j12 * 72340172838076673L);
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j14) >> 3) + i14) & i13;
                if (this.f2031b[iNumberOfTrailingZeros] == j10) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j11) << 6) & j11 & (-9187201950435737472L)) != 0) {
                int iJ = j(i11);
                if (this.f1971f == 0 && ((this.f2030a[iJ >> 3] >> ((iJ & 7) << 3)) & 255) != 254) {
                    f();
                    iJ = j(i11);
                }
                this.f2034e++;
                int i19 = this.f1971f;
                long[] jArr2 = this.f2030a;
                int i20 = iJ >> 3;
                long j15 = jArr2[i20];
                int i21 = (iJ & 7) << 3;
                this.f1971f = i19 - (((j15 >> i21) & 255) == 128 ? 1 : 0);
                int i22 = this.f2033d;
                long j16 = ((~(255 << i21)) & j15) | (j12 << i21);
                jArr2[i20] = j16;
                jArr2[(((iJ - 7) & i22) + (i22 & 7)) >> 3] = j16;
                return iJ;
            }
            i15 = i18 + 8;
            i14 = (i14 + i15) & i13;
        }
    }

    private final int j(int i10) {
        int i11 = this.f2033d;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f2030a;
            int i14 = i12 >> 3;
            int i15 = (i12 & 7) << 3;
            long j10 = ((jArr[i14 + 1] << (64 - i15)) & ((-i15) >> 63)) | (jArr[i14] >>> i15);
            long j11 = j10 & ((~j10) << 7) & (-9187201950435737472L);
            if (j11 != 0) {
                return (i12 + (Long.numberOfTrailingZeros(j11) >> 3)) & i11;
            }
            i13 += 8;
            i12 = (i12 + i13) & i11;
        }
    }

    private final void k() {
        this.f1971f = v0.c(c()) - this.f2034e;
    }

    private final void l(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2030a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        k();
    }

    private final void m(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f2033d = iMax;
        l(iMax);
        this.f2031b = new long[iMax];
        this.f2032c = new Object[iMax];
    }

    private final void n(int i10) {
        h0 h0Var = this;
        long[] jArr = h0Var.f2030a;
        long[] jArr2 = h0Var.f2031b;
        Object[] objArr = h0Var.f2032c;
        int i11 = h0Var.f2033d;
        m(i10);
        long[] jArr3 = h0Var.f2030a;
        long[] jArr4 = h0Var.f2031b;
        Object[] objArr2 = h0Var.f2032c;
        int i12 = h0Var.f2033d;
        int i13 = 0;
        while (i13 < i11) {
            if (((jArr[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                long j10 = jArr2[i13];
                int iA = s.a(j10) * (-862048943);
                int i14 = iA ^ (iA << 16);
                int iJ = h0Var.j(i14 >>> 7);
                long j11 = i14 & 127;
                int i15 = iJ >> 3;
                int i16 = (iJ & 7) << 3;
                long j12 = (jArr3[i15] & (~(255 << i16))) | (j11 << i16);
                jArr3[i15] = j12;
                jArr3[(((iJ - 7) & i12) + (i12 & 7)) >> 3] = j12;
                jArr4[iJ] = j10;
                objArr2[iJ] = objArr[i13];
            }
            i13++;
            h0Var = this;
            jArr = jArr;
        }
    }

    public final void g() {
        this.f2034e = 0;
        long[] jArr = this.f2030a;
        if (jArr != v0.f2044a) {
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2030a;
            int i10 = this.f2033d;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        ArraysKt.u(this.f2032c, null, 0, this.f2033d);
        k();
    }

    public final void o(long j10, Object obj) {
        int i10 = i(j10);
        this.f2031b[i10] = j10;
        this.f2032c[i10] = obj;
    }

    public h0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public h0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        m(v0.g(i10));
    }
}
