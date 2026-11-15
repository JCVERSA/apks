package androidx.collection;

import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j0 extends o0 {

    private int f1979f;

    public j0() {
        this(0, 1, null);
    }

    private final void h() {
        if (this.f2002d <= 8 || Long.compare(ULong.b(ULong.b(this.f2003e) * 32) ^ Long.MIN_VALUE, ULong.b(ULong.b(this.f2002d) * 25) ^ Long.MIN_VALUE) > 0) {
            q(v0.e(this.f2002d));
        } else {
            j();
        }
    }

    private final void j() {
        Object[] objArr;
        int i10;
        int i11;
        long[] jArr = this.f1999a;
        int i12 = this.f2002d;
        Object[] objArr2 = this.f2000b;
        float[] fArr = this.f2001c;
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
                    int iK = k(i18);
                    int i19 = i18 & i12;
                    if (((iK - i19) & i12) / 8 == ((i14 - i19) & i12) / 8) {
                        jArr[i15] = (((long) (i17 & 127)) << i16) | ((~(255 << i16)) & jArr[i15]);
                        jArr[ArraysKt.X(jArr)] = (jArr[i13] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i20 = iK >> 3;
                        long j11 = jArr[i20];
                        int i21 = (iK & 7) << 3;
                        if (((j11 >> i21) & 255) == 128) {
                            int i22 = i14;
                            objArr = objArr2;
                            jArr[i20] = (j11 & (~(255 << i21))) | (((long) (i17 & 127)) << i21);
                            jArr[i15] = (jArr[i15] & (~(255 << i16))) | (128 << i16);
                            objArr[iK] = objArr[i22];
                            objArr[i22] = null;
                            fArr[iK] = fArr[i22];
                            fArr[i22] = 0.0f;
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
                            objArr[iB] = objArr[iK];
                            objArr[iK] = objArr[i24];
                            objArr[i24] = objArr[iB];
                            fArr[iB] = fArr[iK];
                            fArr[iK] = fArr[i24];
                            fArr[i24] = fArr[iB];
                            i11 = i24 - 1;
                        }
                        i13 = 0;
                        jArr[ArraysKt.X(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i14 = i11 + 1;
                        i12 = i10;
                        objArr2 = objArr;
                    }
                }
                i14++;
            }
        }
        m();
    }

    private final int k(int i10) {
        int i11 = this.f2002d;
        int i12 = i10 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr = this.f1999a;
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

    private final int l(Object obj) {
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 >>> 7;
        int i12 = i10 & 127;
        int i13 = this.f2002d;
        int i14 = i11 & i13;
        int i15 = 0;
        while (true) {
            long[] jArr = this.f1999a;
            int i16 = i14 >> 3;
            int i17 = (i14 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = i12;
            int i18 = i12;
            long j12 = j10 ^ (j11 * 72340172838076673L);
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = (i14 + (Long.numberOfTrailingZeros(j13) >> 3)) & i13;
                if (Intrinsics.c(this.f2000b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((((~j10) << 6) & j10 & (-9187201950435737472L)) != 0) {
                int iK = k(i11);
                if (this.f1979f == 0 && ((this.f1999a[iK >> 3] >> ((iK & 7) << 3)) & 255) != 254) {
                    h();
                    iK = k(i11);
                }
                this.f2003e++;
                int i19 = this.f1979f;
                long[] jArr2 = this.f1999a;
                int i20 = iK >> 3;
                long j14 = jArr2[i20];
                int i21 = (iK & 7) << 3;
                this.f1979f = i19 - (((j14 >> i21) & 255) == 128 ? 1 : 0);
                int i22 = this.f2002d;
                long j15 = ((~(255 << i21)) & j14) | (j11 << i21);
                jArr2[i20] = j15;
                jArr2[(((iK - 7) & i22) + (i22 & 7)) >> 3] = j15;
                return ~iK;
            }
            i15 += 8;
            i14 = (i14 + i15) & i13;
            i12 = i18;
        }
    }

    private final void m() {
        this.f1979f = v0.c(d()) - this.f2003e;
    }

    private final void n(int i10) {
        long[] jArr;
        if (i10 == 0) {
            jArr = v0.f2044a;
        } else {
            jArr = new long[((i10 + 15) & (-8)) >> 3];
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
        }
        this.f1999a = jArr;
        int i11 = i10 >> 3;
        long j10 = 255 << ((i10 & 7) << 3);
        jArr[i11] = (jArr[i11] & (~j10)) | j10;
        m();
    }

    private final void o(int i10) {
        int iMax = i10 > 0 ? Math.max(7, v0.f(i10)) : 0;
        this.f2002d = iMax;
        n(iMax);
        this.f2000b = new Object[iMax];
        this.f2001c = new float[iMax];
    }

    private final void q(int i10) {
        int i11;
        long[] jArr = this.f1999a;
        Object[] objArr = this.f2000b;
        float[] fArr = this.f2001c;
        int i12 = this.f2002d;
        o(i10);
        long[] jArr2 = this.f1999a;
        Object[] objArr2 = this.f2000b;
        float[] fArr2 = this.f2001c;
        int i13 = this.f2002d;
        int i14 = 0;
        while (i14 < i12) {
            if (((jArr[i14 >> 3] >> ((i14 & 7) << 3)) & 255) < 128) {
                Object obj = objArr[i14];
                int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
                int i15 = iHashCode ^ (iHashCode << 16);
                int iK = k(i15 >>> 7);
                i11 = i14;
                long j10 = i15 & 127;
                int i16 = iK >> 3;
                int i17 = (iK & 7) << 3;
                long j11 = (j10 << i17) | (jArr2[i16] & (~(255 << i17)));
                jArr2[i16] = j11;
                jArr2[(((iK - 7) & i13) + (i13 & 7)) >> 3] = j11;
                objArr2[iK] = obj;
                fArr2[iK] = fArr[i11];
            } else {
                i11 = i14;
            }
            i14 = i11 + 1;
        }
    }

    public final void i() {
        this.f2003e = 0;
        long[] jArr = this.f1999a;
        if (jArr != v0.f2044a) {
            ArraysKt.x(jArr, -9187201950435737472L, 0, 0, 6, null);
            long[] jArr2 = this.f1999a;
            int i10 = this.f2002d;
            int i11 = i10 >> 3;
            long j10 = 255 << ((i10 & 7) << 3);
            jArr2[i11] = (jArr2[i11] & (~j10)) | j10;
        }
        ArraysKt.u(this.f2000b, null, 0, this.f2002d);
        m();
    }

    public final void p(o0 from) {
        Intrinsics.h(from, "from");
        Object[] objArr = from.f2000b;
        float[] fArr = from.f2001c;
        long[] jArr = from.f1999a;
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
                        int i13 = (i10 << 3) + i12;
                        r(objArr[i13], fArr[i13]);
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

    public final void r(Object obj, float f10) {
        int iL = l(obj);
        if (iL < 0) {
            iL = ~iL;
        }
        this.f2000b[iL] = obj;
        this.f2001c[iL] = f10;
    }

    public j0(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 6 : i10);
    }

    public j0(int i10) {
        super(null);
        if (!(i10 >= 0)) {
            n.d.a("Capacity must be a positive value.");
        }
        o(v0.g(i10));
    }
}
