package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class f0 extends q {

    private int f1968e;

    public f0() {
        this(0, 1, null);
    }

    private final void g() {
        if (this.f2012c <= 8 || Long.compare(ULong.b(ULong.b(this.f2013d) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2012c) * 25) ^ Long.MIN_VALUE) > 0) {
            t(v0.e(this.f2012c));
        } else {
            i();
        }
    }

    private final void i() {
        int i10;
        long[] jArr = this.f2010a;
        int i11 = this.f2012c;
        int[] iArr = this.f2011b;
        v0.a(jArr, i11);
        char c10 = 0;
        int i12 = 0;
        int iB = -1;
        while (i12 != i11) {
            int i13 = i12 >> 3;
            int i14 = (i12 & 7) << 3;
            long j10 = (jArr[i13] >> i14) & 255;
            if (j10 == 128) {
                iB = i12;
                i12++;
            } else {
                if (j10 == 254) {
                    int i15 = iArr[i12] * (-862048943);
                    int i16 = i15 ^ (i15 << 16);
                    int i17 = i16 >>> 7;
                    int iK = k(i17);
                    int i18 = i17 & i11;
                    if (((iK - i18) & i11) / 8 == ((i12 - i18) & i11) / 8) {
                        jArr[i13] = (((long) (i16 & 127)) << i14) | ((~(255 << i14)) & jArr[i13]);
                        jArr[ArraysKt.X(jArr)] = (jArr[c10] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i19 = iK >> 3;
                        long j11 = jArr[i19];
                        int i20 = (iK & 7) << 3;
                        if (((j11 >> i20) & 255) == 128) {
                            int i21 = i12;
                            jArr[i19] = (((long) (i16 & 127)) << i20) | (j11 & (~(255 << i20)));
                            jArr[i13] = (jArr[i13] & (~(255 << i14))) | (128 << i14);
                            iArr[iK] = iArr[i21];
                            iArr[i21] = 0;
                            i10 = i21;
                            iB = i10;
                        } else {
                            int i22 = i12;
                            jArr[i19] = (((long) (i16 & 127)) << i20) | (j11 & (~(255 << i20)));
                            if (iB == -1) {
                                iB = v0.b(jArr, i22 + 1, i11);
                            }
                            iArr[iB] = iArr[iK];
                            iArr[iK] = iArr[i22];
                            iArr[i22] = iArr[iB];
                            i10 = i22 - 1;
                        }
                        jArr[ArraysKt.X(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i12 = i10 + 1;
                        c10 = 0;
                    }
                }
                i12++;
            }
        }
        l();
    }

    private final int j(int i10) {
        int i11 = (-862048943) * i10;
        int i12 = i11 ^ (i11 << 16);
        int i13 = i12 >>> 7;
        int i14 = i12 & 127;
        int i15 = this.f2012c;
        int i16 = i13 & i15;
        int i17 = 0;
        while (true) {
            long[] jArr = this.f2010a;
            int i18 = i16 >> 3;
            int i19 = (i16 & 7) << 3;
            long j10 = ((jArr[i18 + 1] << (64 - i19)) & ((-i19) >> 63)) | (jArr[i18] >>> i19);
            long j11 = i14;
            int i20 = i17;
            long j12 = j10 ^ (j11 * 72340172838076673L);
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = (i16 + (Long.numberOfTrailingZeros(j13) >> 3)) & i15;
                if (this.f2011b[iNumberOfTrailingZeros] == i10) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int iK = k(i13);
                if (this.f1968e == 0 && ((this.f2010a[iK >> 3] >> ((iK & 7) << 3)) & 255) != 254) {
                    g();
                    iK = k(i13);
                }
                this.f2013d++;
                int i21 = this.f1968e;
                long[] jArr2 = this.f2010a;
                int i22 = iK >> 3;
                long j14 = jArr2[i22];
                int i23 = (iK & 7) << 3;
                this.f1968e = i21 - (((j14 >> i23) & 255) == 128 ? 1 : 0);
                int i24 = this.f2012c;
                long j15 = ((~(255 << i23)) & j14) | (j11 << i23);
                jArr2[i22] = j15;
                jArr2[(((iK - 7) & i24) + (i24 & 7)) >> 3] = j15;
                return iK;
            }
            i17 = i20 + 8;
            i16 = (i16 + i17) & i15;
        }
    }

    private final int k(int i10) {
        int i11 = this.f2012c;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f2010a;
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

    private final void l() {
        this.f1968e = v0.c(b()) - this.f2013d;
    }

    private final void m(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2010a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        l();
    }

    private final void n(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f2012c = iMax;
        m(iMax);
        this.f2011b = new int[iMax];
    }

    private final void s(int i10) {
        this.f2013d--;
        long[] jArr = this.f2010a;
        int i11 = this.f2012c;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
    }

    private final void t(int i10) {
        long[] jArr = this.f2010a;
        int[] iArr = this.f2011b;
        int i11 = this.f2012c;
        n(i10);
        long[] jArr2 = this.f2010a;
        int[] iArr2 = this.f2011b;
        int i12 = this.f2012c;
        for (int i13 = 0; i13 < i11; i13++) {
            if (((jArr[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                int i14 = iArr[i13];
                int i15 = (-862048943) * i14;
                int i16 = i15 ^ (i15 << 16);
                int iK = k(i16 >>> 7);
                long j10 = i16 & 127;
                int i17 = iK >> 3;
                int i18 = (iK & 7) << 3;
                long j11 = (jArr2[i17] & (~(255 << i18))) | (j10 << i18);
                jArr2[i17] = j11;
                jArr2[(((iK - 7) & i12) + (i12 & 7)) >> 3] = j11;
                iArr2[iK] = i14;
            }
        }
    }

    public final boolean f(int i10) {
        int i11 = this.f2013d;
        this.f2011b[j(i10)] = i10;
        return this.f2013d != i11;
    }

    public final void h() {
        this.f2013d = 0;
        long[] jArr = this.f2010a;
        if (jArr != v0.f2044a) {
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2010a;
            int i10 = this.f2012c;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        l();
    }

    public final void o(int i10) {
        int iNumberOfTrailingZeros;
        int i11 = (-862048943) * i10;
        int i12 = i11 ^ (i11 << 16);
        int i13 = i12 & 127;
        int i14 = this.f2012c;
        int i15 = (i12 >>> 7) & i14;
        int i16 = 0;
        loop0: while (true) {
            long[] jArr = this.f2010a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j10 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j11 = (((long) i13) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i14;
                if (this.f2011b[iNumberOfTrailingZeros] == i10) {
                    break loop0;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            } else {
                i16 += 8;
                i15 = (i15 + i16) & i14;
            }
        }
        if (iNumberOfTrailingZeros >= 0) {
            s(iNumberOfTrailingZeros);
        }
    }

    public final void p(q elements) {
        Intrinsics.h(elements, "elements");
        int[] iArr = elements.f2011b;
        long[] jArr = elements.f2010a;
        int length = jArr.length - 2;
        if (length < 0) {
            return;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128) {
                        o(iArr[(i10 << 3) + i12]);
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return;
                }
            }
            if (i10 == length) {
                return;
            } else {
                i10++;
            }
        }
    }

    public final boolean q(int i10) {
        int iNumberOfTrailingZeros;
        int i11 = (-862048943) * i10;
        int i12 = i11 ^ (i11 << 16);
        int i13 = i12 & 127;
        int i14 = this.f2012c;
        int i15 = (i12 >>> 7) & i14;
        int i16 = 0;
        loop0: while (true) {
            long[] jArr = this.f2010a;
            int i17 = i15 >> 3;
            int i18 = (i15 & 7) << 3;
            long j10 = ((jArr[i17 + 1] << (64 - i18)) & ((-i18) >> 63)) | (jArr[i17] >>> i18);
            long j11 = (((long) i13) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i14;
                if (this.f2011b[iNumberOfTrailingZeros] == i10) {
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
        boolean z10 = iNumberOfTrailingZeros >= 0;
        if (z10) {
            s(iNumberOfTrailingZeros);
        }
        return z10;
    }

    public final boolean r(q elements) {
        Intrinsics.h(elements, "elements");
        int i10 = this.f2013d;
        p(elements);
        return i10 != this.f2013d;
    }

    public f0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public f0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        n(v0.g(i10));
    }
}
