package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class o0 {

    public long[] f1999a;

    public Object[] f2000b;

    public float[] f2001c;

    public int f2002d;

    public int f2003e;

    public o0(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(Object obj) {
        return b(obj) >= 0;
    }

    public final int b(Object obj) {
        int i10 = 0;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i11 = iHashCode ^ (iHashCode << 16);
        int i12 = i11 & 127;
        int i13 = this.f2002d;
        int i14 = i11 >>> 7;
        while (true) {
            int i15 = i14 & i13;
            long[] jArr = this.f1999a;
            int i16 = i15 >> 3;
            int i17 = (i15 & 7) << 3;
            long j10 = ((jArr[i16 + 1] << (64 - i17)) & ((-i17) >> 63)) | (jArr[i16] >>> i17);
            long j11 = (((long) i12) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i15) & i13;
                if (Intrinsics.c(this.f2000b[iNumberOfTrailingZeros], obj)) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i10 += 8;
            i14 = i15 + i10;
        }
    }

    public final float c(Object obj) {
        int iB = b(obj);
        if (iB >= 0) {
            return this.f2001c[iB];
        }
        throw new NoSuchElementException("There is no key " + obj + " in the map");
    }

    public final int d() {
        return this.f2002d;
    }

    public final float e(Object obj, float f10) {
        int iB = b(obj);
        return iB >= 0 ? this.f2001c[iB] : f10;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0063 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0065 A[LOOP:0: B:14:0x0027->B:27:0x0065, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0068 A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        if (o0Var.f() != f()) {
            return false;
        }
        Object[] objArr = this.f2000b;
        float[] fArr = this.f2001c;
        long[] jArr = this.f1999a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128) {
                            int i13 = (i10 << 3) + i12;
                            if (fArr[i13] != o0Var.c(objArr[i13])) {
                                return false;
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i11 == 8) {
                        if (i10 != length) {
                            i10++;
                        }
                    }
                } else if (i10 != length) {
                    i10++;
                }
            }
        }
        return true;
    }

    public final int f() {
        return this.f2003e;
    }

    public final boolean g() {
        return this.f2003e == 0;
    }

    public int hashCode() {
        Object[] objArr = this.f2000b;
        float[] fArr = this.f2001c;
        long[] jArr = this.f1999a;
        int length = jArr.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int iFloatToIntBits = 0;
            while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i11 << 3) + i13;
                            Object obj = objArr[i14];
                            iFloatToIntBits += Float.floatToIntBits(fArr[i14]) ^ (obj != null ? obj.hashCode() : 0);
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        return iFloatToIntBits;
                    }
                }
                if (i11 != length) {
                    i11++;
                } else {
                    i10 = iFloatToIntBits;
                }
            }
        }
        return i10;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0074 A[DONT_INVERT, PHI: r8
      0x0074: PHI (r8v2 int) = (r8v1 int), (r8v3 int) binds: [B:10:0x0031, B:22:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x0076 A[LOOP:0: B:9:0x0023->B:24:0x0076, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x0079 A[EDGE_INSN: B:28:0x0079->B:25:0x0079 BREAK  A[LOOP:0: B:9:0x0023->B:24:0x0076], SYNTHETIC] */
    public String toString() {
        if (g()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('{');
        Object[] objArr = this.f2000b;
        float[] fArr = this.f2001c;
        long[] jArr = this.f1999a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i10 != length) {
                        break;
                        break;
                    }
                    i10++;
                } else {
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i10 << 3) + i13;
                            Object obj = objArr[i14];
                            float f10 = fArr[i14];
                            if (obj == this) {
                                obj = "(this)";
                            }
                            sb2.append(obj);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            sb2.append(f10);
                            i11++;
                            if (i11 < this.f2003e) {
                                sb2.append(',');
                                sb2.append(' ');
                            }
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        break;
                    }
                    if (i10 != length) {
                        break;
                    }
                    i10++;
                }
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "s.append('}').toString()");
        return string;
    }

    private o0() {
        this.f1999a = v0.f2044a;
        this.f2000b = n.a.f66844c;
        this.f2001c = j.a();
    }
}
