package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class u {

    public long[] f2030a;

    public long[] f2031b;

    public Object[] f2032c;

    public int f2033d;

    public int f2034e;

    public u(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(long j10) {
        int iNumberOfTrailingZeros;
        int iA = s.a(j10) * (-862048943);
        int i10 = iA ^ (iA << 16);
        int i11 = i10 & 127;
        int i12 = this.f2033d;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        loop0: while (true) {
            long[] jArr = this.f2030a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = (((long) i11) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i13) & i12;
                if (this.f2031b[iNumberOfTrailingZeros] == j10) {
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
        return iNumberOfTrailingZeros >= 0;
    }

    public final Object b(long j10) {
        int iNumberOfTrailingZeros;
        int iA = s.a(j10) * (-862048943);
        int i10 = iA ^ (iA << 16);
        int i11 = i10 & 127;
        int i12 = this.f2033d;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        loop0: while (true) {
            long[] jArr = this.f2030a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = (((long) i11) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i13) & i12;
                if (this.f2031b[iNumberOfTrailingZeros] == j10) {
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
        if (iNumberOfTrailingZeros >= 0) {
            return this.f2032c[iNumberOfTrailingZeros];
        }
        return null;
    }

    public final int c() {
        return this.f2033d;
    }

    public final int d() {
        return this.f2034e;
    }

    public final boolean e() {
        return this.f2034e == 0;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0078 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x007a A[LOOP:0: B:14:0x0027->B:35:0x007a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:38:0x007d A[EDGE_INSN: B:38:0x007d->B:36:0x007d BREAK  A[LOOP:0: B:14:0x0027->B:35:0x007a], SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        if (uVar.d() != d()) {
            return false;
        }
        long[] jArr = this.f2031b;
        Object[] objArr = this.f2032c;
        long[] jArr2 = this.f2030a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i10 != length) {
                        break;
                        break;
                    }
                    i10++;
                } else {
                    int i11 = 8;
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i10 << 3) + i13;
                            long j11 = jArr[i14];
                            Object obj2 = objArr[i14];
                            if (obj2 == null) {
                                if (uVar.b(j11) != null || !uVar.a(j11)) {
                                    return false;
                                }
                            } else if (!Intrinsics.c(obj2, uVar.b(j11))) {
                                return false;
                            }
                            i11 = 8;
                        }
                        j10 >>= i11;
                    }
                    if (i12 != i11) {
                        break;
                    }
                    if (i10 != length) {
                        break;
                    }
                    i10++;
                }
            }
        }
        return true;
    }

    public int hashCode() {
        long[] jArr = this.f2031b;
        Object[] objArr = this.f2032c;
        long[] jArr2 = this.f2030a;
        int length = jArr2.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int iHashCode = 0;
            while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i11 << 3) + i13;
                            long j11 = jArr[i14];
                            Object obj = objArr[i14];
                            iHashCode += (obj != null ? obj.hashCode() : 0) ^ s.a(j11);
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        return iHashCode;
                    }
                }
                if (i11 != length) {
                    i11++;
                } else {
                    i10 = iHashCode;
                }
            }
        }
        return i10;
    }

    public String toString() {
        int i10;
        int i11;
        if (e()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        long[] jArr = this.f2031b;
        Object[] objArr = this.f2032c;
        long[] jArr2 = this.f2030a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i12 = 0;
            int i13 = 0;
            while (true) {
                long j10 = jArr2[i12];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i14 = 8 - ((~(i12 - length)) >>> 31);
                    int i15 = 0;
                    while (i15 < i14) {
                        if ((255 & j10) < 128) {
                            int i16 = (i12 << 3) + i15;
                            i11 = i12;
                            long j11 = jArr[i16];
                            Object obj = objArr[i16];
                            sb2.append(j11);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            i13++;
                            if (i13 < this.f2034e) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
                        } else {
                            i11 = i12;
                        }
                        j10 >>= 8;
                        i15++;
                        i12 = i11;
                    }
                    int i17 = i12;
                    if (i14 != 8) {
                        break;
                    }
                    i10 = i17;
                } else {
                    i10 = i12;
                }
                if (i10 == length) {
                    break;
                }
                i12 = i10 + 1;
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "s.append('}').toString()");
        return string;
    }

    private u() {
        this.f2030a = v0.f2044a;
        this.f2031b = w.a();
        this.f2032c = n.a.f66844c;
    }
}
