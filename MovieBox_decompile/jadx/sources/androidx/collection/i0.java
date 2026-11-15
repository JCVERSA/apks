package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class i0 extends v {

    private int f1976e;

    public i0() {
        this(0, 1, null);
    }

    private final void e() {
        if (this.f2042c <= 8 || Long.compare(ULong.b(ULong.b(this.f2043d) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2042c) * 25) ^ Long.MIN_VALUE) > 0) {
            o(v0.e(this.f2042c));
        } else {
            f();
        }
    }

    private final void f() {
        int i10;
        long[] jArr = this.f2040a;
        int i11 = this.f2042c;
        long[] jArr2 = this.f2041b;
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
                    int iA = s.a(jArr2[i12]) * (-862048943);
                    int i15 = iA ^ (iA << 16);
                    int i16 = i15 >>> 7;
                    int iH = h(i16);
                    int i17 = i16 & i11;
                    if (((iH - i17) & i11) / 8 == ((i12 - i17) & i11) / 8) {
                        jArr[i13] = (((long) (i15 & 127)) << i14) | ((~(255 << i14)) & jArr[i13]);
                        jArr[ArraysKt.X(jArr)] = (jArr[c10] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i18 = iH >> 3;
                        long j11 = jArr[i18];
                        int i19 = (iH & 7) << 3;
                        if (((j11 >> i19) & 255) == 128) {
                            int i20 = i12;
                            jArr[i18] = (((long) (i15 & 127)) << i19) | (j11 & (~(255 << i19)));
                            jArr[i13] = (jArr[i13] & (~(255 << i14))) | (128 << i14);
                            jArr2[iH] = jArr2[i20];
                            jArr2[i20] = 0;
                            i10 = i20;
                            iB = i10;
                        } else {
                            int i21 = i12;
                            jArr[i18] = (((long) (i15 & 127)) << i19) | (j11 & (~(255 << i19)));
                            if (iB == -1) {
                                iB = v0.b(jArr, i21 + 1, i11);
                            }
                            jArr2[iB] = jArr2[iH];
                            jArr2[iH] = jArr2[i21];
                            jArr2[i21] = jArr2[iB];
                            i10 = i21 - 1;
                        }
                        jArr[ArraysKt.X(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i12 = i10 + 1;
                        c10 = 0;
                    }
                }
                i12++;
            }
        }
        i();
    }

    private final int g(long j10) {
        int iA = s.a(j10) * (-862048943);
        int i10 = iA ^ (iA << 16);
        int i11 = i10 >>> 7;
        int i12 = i10 & 127;
        int i13 = this.f2042c;
        int i14 = i11 & i13;
        int i15 = 0;
        while (true) {
            long[] jArr = this.f2040a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j11 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j12 = i12;
            int i18 = i15;
            long j13 = j11 ^ (j12 * 72340172838076673L);
            for (long j14 = (~j13) & (j13 - 72340172838076673L) & (-9187201950435737472L); j14 != 0; j14 &= j14 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j14) >> 3) + i14) & i13;
                if (this.f2041b[iNumberOfTrailingZeros] == j10) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j11) << 6) & j11 & (-9187201950435737472L)) != 0) {
                int iH = h(i11);
                if (this.f1976e == 0 && ((this.f2040a[iH >> 3] >> ((iH & 7) << 3)) & 255) != 254) {
                    e();
                    iH = h(i11);
                }
                this.f2043d++;
                int i19 = this.f1976e;
                long[] jArr2 = this.f2040a;
                int i20 = iH >> 3;
                long j15 = jArr2[i20];
                int i21 = (iH & 7) << 3;
                this.f1976e = i19 - (((j15 >> i21) & 255) == 128 ? 1 : 0);
                int i22 = this.f2042c;
                long j16 = ((~(255 << i21)) & j15) | (j12 << i21);
                jArr2[i20] = j16;
                jArr2[(((iH - 7) & i22) + (i22 & 7)) >> 3] = j16;
                return iH;
            }
            i15 = i18 + 8;
            i14 = (i14 + i15) & i13;
        }
    }

    private final int h(int i10) {
        int i11 = this.f2042c;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f2040a;
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

    private final void i() {
        this.f1976e = v0.c(b()) - this.f2043d;
    }

    private final void j(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2040a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        i();
    }

    private final void k(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f2042c = iMax;
        j(iMax);
        this.f2041b = new long[iMax];
    }

    private final void n(int i10) {
        this.f2043d--;
        long[] jArr = this.f2040a;
        int i11 = this.f2042c;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
    }

    private final void o(int i10) {
        long[] jArr = this.f2040a;
        long[] jArr2 = this.f2041b;
        int i11 = this.f2042c;
        k(i10);
        long[] jArr3 = this.f2040a;
        long[] jArr4 = this.f2041b;
        int i12 = this.f2042c;
        for (int i13 = 0; i13 < i11; i13++) {
            if (((jArr[i13 >> 3] >> ((i13 & 7) << 3)) & 255) < 128) {
                long j10 = jArr2[i13];
                int iA = s.a(j10) * (-862048943);
                int i14 = iA ^ (iA << 16);
                int iH = h(i14 >>> 7);
                long j11 = i14 & 127;
                int i15 = iH >> 3;
                int i16 = (iH & 7) << 3;
                long j12 = (jArr3[i15] & (~(255 << i16))) | (j11 << i16);
                jArr3[i15] = j12;
                jArr3[(((iH - 7) & i12) + (i12 & 7)) >> 3] = j12;
                jArr4[iH] = j10;
            }
        }
    }

    public final void l(long j10) {
        this.f2041b[g(j10)] = j10;
    }

    public final boolean m(long j10) {
        int iNumberOfTrailingZeros;
        int iA = s.a(j10) * (-862048943);
        int i10 = iA ^ (iA << 16);
        int i11 = i10 & 127;
        int i12 = this.f2042c;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        loop0: while (true) {
            long[] jArr = this.f2040a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = (((long) i11) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i13) & i12;
                if (this.f2041b[iNumberOfTrailingZeros] == j10) {
                    break loop0;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
        boolean z10 = iNumberOfTrailingZeros >= 0;
        if (z10) {
            n(iNumberOfTrailingZeros);
        }
        return z10;
    }

    public i0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public i0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        k(v0.g(i10));
    }
}
