package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class e0 extends o {

    private int f1963f;

    public e0() {
        this(0, 1, null);
    }

    private final void h() {
        if (this.f1997d <= 8 || Long.compare(ULong.b(ULong.b(this.f1998e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f1997d) * 25) ^ Long.MIN_VALUE) > 0) {
            s(v0.e(this.f1997d));
        } else {
            j();
        }
    }

    private final void j() {
        int[] iArr;
        int i10;
        int i11;
        long[] jArr = this.f1994a;
        int i12 = this.f1997d;
        int[] iArr2 = this.f1995b;
        Object[] objArr = this.f1996c;
        v0.a(jArr, i12);
        char c10 = 0;
        int i13 = 0;
        int iB = -1;
        while (i13 != i12) {
            int i14 = i13 >> 3;
            int i15 = (i13 & 7) << 3;
            long j10 = (jArr[i14] >> i15) & 255;
            if (j10 == 128) {
                iB = i13;
                i13++;
            } else {
                if (j10 == 254) {
                    int i16 = iArr2[i13] * (-862048943);
                    int i17 = i16 ^ (i16 << 16);
                    int i18 = i17 >>> 7;
                    int iL = l(i18);
                    int i19 = i18 & i12;
                    if (((iL - i19) & i12) / 8 == ((i13 - i19) & i12) / 8) {
                        jArr[i14] = (((long) (i17 & 127)) << i15) | ((~(255 << i15)) & jArr[i14]);
                        jArr[ArraysKt.X(jArr)] = (jArr[c10] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i20 = iL >> 3;
                        long j11 = jArr[i20];
                        int i21 = (iL & 7) << 3;
                        if (((j11 >> i21) & 255) == 128) {
                            int i22 = i13;
                            iArr = iArr2;
                            jArr[i20] = (j11 & (~(255 << i21))) | (((long) (i17 & 127)) << i21);
                            jArr[i14] = (jArr[i14] & (~(255 << i15))) | (128 << i15);
                            iArr[iL] = iArr[i22];
                            iArr[i22] = 0;
                            objArr[iL] = objArr[i22];
                            objArr[i22] = null;
                            i11 = i22;
                            iB = i11;
                            i10 = i12;
                        } else {
                            int i23 = i12;
                            iArr = iArr2;
                            int i24 = i13;
                            jArr[i20] = (((long) (i17 & 127)) << i21) | (j11 & (~(255 << i21)));
                            if (iB == -1) {
                                i10 = i23;
                                iB = v0.b(jArr, i24 + 1, i10);
                            } else {
                                i10 = i23;
                            }
                            iArr[iB] = iArr[iL];
                            iArr[iL] = iArr[i24];
                            iArr[i24] = iArr[iB];
                            objArr[iB] = objArr[iL];
                            objArr[iL] = objArr[i24];
                            objArr[i24] = objArr[iB];
                            i11 = i24 - 1;
                        }
                        c10 = 0;
                        jArr[ArraysKt.X(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i13 = i11 + 1;
                        i12 = i10;
                        iArr2 = iArr;
                    }
                }
                i13++;
            }
        }
        m();
    }

    private final int k(int i10) {
        int i11 = (-862048943) * i10;
        int i12 = i11 ^ (i11 << 16);
        int i13 = i12 >>> 7;
        int i14 = i12 & 127;
        int i15 = this.f1997d;
        int i16 = i13 & i15;
        int i17 = 0;
        while (true) {
            long[] jArr = this.f1994a;
            int i18 = i16 >> 3;
            int i19 = (i16 & 7) << 3;
            long j10 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j11 = i14;
            int i20 = i17;
            long j12 = j10 ^ (j11 * 72340172838076673L);
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = (i16 + (Long.numberOfTrailingZeros(j13) >> 3)) & i15;
                if (this.f1995b[iNumberOfTrailingZeros] == i10) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int iL = l(i13);
                if (this.f1963f == 0 && ((this.f1994a[iL >> 3] >> ((iL & 7) << 3)) & 255) != 254) {
                    h();
                    iL = l(i13);
                }
                this.f1998e++;
                int i21 = this.f1963f;
                long[] jArr2 = this.f1994a;
                int i22 = iL >> 3;
                long j14 = jArr2[i22];
                int i23 = (iL & 7) << 3;
                this.f1963f = i21 - (((j14 >> i23) & 255) == 128 ? 1 : 0);
                int i24 = this.f1997d;
                long j15 = ((~(255 << i23)) & j14) | (j11 << i23);
                jArr2[i22] = j15;
                jArr2[(((iL - 7) & i24) + (i24 & 7)) >> 3] = j15;
                return iL;
            }
            i17 = i20 + 8;
            i16 = (i16 + i17) & i15;
        }
    }

    private final int l(int i10) {
        int i11 = this.f1997d;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f1994a;
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

    private final void m() {
        this.f1963f = v0.c(d()) - this.f1998e;
    }

    private final void n(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f1994a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        m();
    }

    private final void o(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f1997d = iMax;
        n(iMax);
        this.f1995b = new int[iMax];
        this.f1996c = new Object[iMax];
    }

    private final void s(int i10) {
        e0 e0Var = this;
        long[] jArr = e0Var.f1994a;
        int[] iArr = e0Var.f1995b;
        Object[] objArr = e0Var.f1996c;
        int i11 = e0Var.f1997d;
        o(i10);
        long[] jArr2 = e0Var.f1994a;
        int[] iArr2 = e0Var.f1995b;
        Object[] objArr2 = e0Var.f1996c;
        int i12 = e0Var.f1997d;
        int i13 = 0;
        while (i13 < i11) {
            if (((jArr[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                int i14 = iArr[i13];
                int i15 = (-862048943) * i14;
                int i16 = i15 ^ (i15 << 16);
                int iL = e0Var.l(i16 >>> 7);
                long j10 = i16 & 127;
                int i17 = iL >> 3;
                int i18 = (iL & 7) << 3;
                long j11 = (jArr2[i17] & (~(255 << i18))) | (j10 << i18);
                jArr2[i17] = j11;
                jArr2[(((iL - 7) & i12) + (i12 & 7)) >> 3] = j11;
                iArr2[iL] = i14;
                objArr2[iL] = objArr[i13];
            }
            i13++;
            e0Var = this;
            jArr = jArr;
        }
    }

    public final void i() {
        this.f1998e = 0;
        long[] jArr = this.f1994a;
        if (jArr != v0.f2044a) {
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f1994a;
            int i10 = this.f1997d;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        ArraysKt.u(this.f1996c, null, 0, this.f1997d);
        m();
    }

    public final Object p(int i10, Object obj) {
        int iK = k(i10);
        Object[] objArr = this.f1996c;
        Object obj2 = objArr[iK];
        this.f1995b[iK] = i10;
        objArr[iK] = obj;
        return obj2;
    }

    public final Object q(int i10) {
        int iNumberOfTrailingZeros;
        int i11 = (-862048943) * i10;
        int i12 = i11 ^ (i11 << 16);
        int i13 = i12 & 127;
        int i14 = this.f1997d;
        int i15 = (i12 >>> 7) & i14;
        int i16 = 0;
        loop0: while (true) {
            long[] jArr = this.f1994a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j10 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j11 = (((long) i13) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i14;
                if (this.f1995b[iNumberOfTrailingZeros] == i10) {
                    break loop0;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i16 += 8;
            i15 = (i15 + i16) & i14;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return r(iNumberOfTrailingZeros);
        }
        return null;
    }

    public final Object r(int i10) {
        this.f1998e--;
        long[] jArr = this.f1994a;
        int i11 = this.f1997d;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
        Object[] objArr = this.f1996c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    public final void t(int i10, Object obj) {
        int iK = k(i10);
        this.f1995b[iK] = i10;
        this.f1996c[iK] = obj;
    }

    public e0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public e0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        o(v0.g(i10));
    }
}
