package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class n0 extends u0 {

    private int f1993f;

    public n0() {
        this(0, 1, null);
    }

    private final void g() {
        if (this.f2038d <= 8 || Long.compare(ULong.b(ULong.b(this.f2039e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2038d) * 25) ^ Long.MIN_VALUE) > 0) {
            q(v0.e(this.f2038d));
        } else {
            i();
        }
    }

    private final void i() {
        Object[] objArr;
        int i10;
        int i11;
        long[] jArr = this.f2035a;
        int i12 = this.f2038d;
        Object[] objArr2 = this.f2036b;
        Object[] objArr3 = this.f2037c;
        v0.a(jArr, i12);
        int i13 = 0;
        int i14 = 0;
        int iB = -1;
        while (i14 != i12) {
            int i15 = i14 >> 3;
            int i16 = (i14 & 7) << 3;
            long j10 = (jArr[i15] >> i16) & 255;
            if (j10 == 128) {
                iB = i14;
                i14++;
            } else {
                if (j10 == 254) {
                    Object obj = objArr2[i14];
                    int iHashCode = (obj != null ? obj.hashCode() : i13) * (-862048943);
                    int i17 = iHashCode ^ (iHashCode << 16);
                    int i18 = i17 >>> 7;
                    int iJ = j(i18);
                    int i19 = i18 & i12;
                    if (((iJ - i19) & i12) / 8 == ((i14 - i19) & i12) / 8) {
                        jArr[i15] = (((long) (i17 & 127)) << i16) | ((~(255 << i16)) & jArr[i15]);
                        jArr[ArraysKt.X(jArr)] = jArr[i13];
                    } else {
                        int i20 = iJ >> 3;
                        long j11 = jArr[i20];
                        int i21 = (iJ & 7) << 3;
                        if (((j11 >> i21) & 255) == 128) {
                            int i22 = i14;
                            objArr = objArr2;
                            jArr[i20] = (j11 & (~(255 << i21))) | (((long) (i17 & 127)) << i21);
                            jArr[i15] = (jArr[i15] & (~(255 << i16))) | (128 << i16);
                            objArr[iJ] = objArr[i22];
                            objArr[i22] = null;
                            objArr3[iJ] = objArr3[i22];
                            objArr3[i22] = null;
                            i11 = i22;
                            iB = i11;
                            i10 = i12;
                        } else {
                            int i23 = i12;
                            objArr = objArr2;
                            int i24 = i14;
                            jArr[i20] = (((long) (i17 & 127)) << i21) | (j11 & (~(255 << i21)));
                            if (iB == -1) {
                                i10 = i23;
                                iB = v0.b(jArr, i24 + 1, i10);
                            } else {
                                i10 = i23;
                            }
                            objArr[iB] = objArr[iJ];
                            objArr[iJ] = objArr[i24];
                            objArr[i24] = objArr[iB];
                            objArr3[iB] = objArr3[iJ];
                            objArr3[iJ] = objArr3[i24];
                            objArr3[i24] = objArr3[iB];
                            i11 = i24 - 1;
                        }
                        i13 = 0;
                        jArr[ArraysKt.X(jArr)] = jArr[0];
                        i14 = i11 + 1;
                        i12 = i10;
                        objArr2 = objArr;
                    }
                }
                i14++;
            }
        }
        l();
    }

    private final int j(int i10) {
        int i11 = this.f2038d;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f2035a;
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
        this.f1993f = v0.c(c()) - this.f2039e;
    }

    private final void m(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f2035a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        l();
    }

    private final void n(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f2038d = iMax;
        m(iMax);
        this.f2036b = new Object[iMax];
        this.f2037c = new Object[iMax];
    }

    private final void q(int i10) {
        int i11;
        long[] jArr = this.f2035a;
        Object[] objArr = this.f2036b;
        Object[] objArr2 = this.f2037c;
        int i12 = this.f2038d;
        n(i10);
        long[] jArr2 = this.f2035a;
        Object[] objArr3 = this.f2036b;
        Object[] objArr4 = this.f2037c;
        int i13 = this.f2038d;
        int i14 = 0;
        while (i14 < i12) {
            if (((jArr[i14 >> 3] >> ((i14 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i14];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
                int i15 = iHashCode ^ (iHashCode << 16);
                int iJ = j(i15 >>> 7);
                i11 = i14;
                long j10 = i15 & 127;
                int i16 = iJ >> 3;
                int i17 = (iJ & 7) << 3;
                long j11 = (j10 << i17) | (jArr2[i16] & (~(255 << i17)));
                jArr2[i16] = j11;
                jArr2[(((iJ - 7) & i13) + (i13 & 7)) >> 3] = j11;
                objArr3[iJ] = obj;
                objArr4[iJ] = objArr2[i11];
            } else {
                i11 = i14;
            }
            i14 = i11 + 1;
        }
    }

    public final void h() {
        this.f2039e = 0;
        long[] jArr = this.f2035a;
        if (jArr != v0.f2044a) {
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f2035a;
            int i10 = this.f2038d;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        ArraysKt.u(this.f2037c, null, 0, this.f2038d);
        ArraysKt.u(this.f2036b, null, 0, this.f2038d);
        l();
    }

    public final int k(Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 >>> 7;
        int i12 = i10 & 127;
        int i13 = this.f2038d;
        int i14 = i11 & i13;
        int i15 = 0;
        while (true) {
            long[] jArr = this.f2035a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = i12;
            int i18 = i12;
            long j12 = j10 ^ (j11 * 72340172838076673L);
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = (i14 + (Long.numberOfTrailingZeros(j13) >> 3)) & i13;
                if (Intrinsics.c(this.f2036b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int iJ = j(i11);
                if (this.f1993f == 0 && ((this.f2035a[iJ >> 3] >> ((iJ & 7) << 3)) & 255) != 254) {
                    g();
                    iJ = j(i11);
                }
                this.f2039e++;
                int i19 = this.f1993f;
                long[] jArr2 = this.f2035a;
                int i20 = iJ >> 3;
                long j14 = jArr2[i20];
                int i21 = (iJ & 7) << 3;
                this.f1993f = i19 - (((j14 >> i21) & 255) == 128 ? 1 : 0);
                int i22 = this.f2038d;
                long j15 = ((~(255 << i21)) & j14) | (j11 << i21);
                jArr2[i20] = j15;
                jArr2[(((iJ - 7) & i22) + (i22 & 7)) >> 3] = j15;
                return ~iJ;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
            i12 = i18;
        }
    }

    public final Object o(Object obj) {
        int iNumberOfTrailingZeros;
        int i10 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 & 127;
        int i13 = this.f2038d;
        int i14 = i11 >>> 7;
        loop0: while (true) {
            int i15 = i14 & i13;
            long[] jArr = this.f2035a;
            int i16 = i15 >> 3;
            int i17 = (i15 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = (((long) i12) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i13;
                if (Intrinsics.c(this.f2036b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i10 += 8;
            i14 = i15 + i10;
        }
        if (iNumberOfTrailingZeros >= 0) {
            return p(iNumberOfTrailingZeros);
        }
        return null;
    }

    public final Object p(int i10) {
        this.f2039e--;
        long[] jArr = this.f2035a;
        int i11 = this.f2038d;
        int i12 = i10 >> 3;
        int i13 = (i10 & 7) << 3;
        long j10 = (jArr[i12] & (~(255 << i13))) | (254 << i13);
        jArr[i12] = j10;
        jArr[(((i10 - 7) & i11) + (i11 & 7)) >> 3] = j10;
        this.f2036b[i10] = null;
        Object[] objArr = this.f2037c;
        Object obj = objArr[i10];
        objArr[i10] = null;
        return obj;
    }

    public final void r(Object obj, Object obj2) {
        int iK = k(obj);
        if (iK < 0) {
            iK = ~iK;
        }
        this.f2036b[iK] = obj;
        this.f2037c[iK] = obj2;
    }

    public n0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public n0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        n(v0.g(i10));
    }
}
