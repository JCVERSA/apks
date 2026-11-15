package androidx.collection;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class t {

    public long[] f2024a;

    public long[] f2025b;

    public int[] f2026c;

    public int f2027d;

    public int f2028e;

    public t(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final int a(long j10) {
        int iA = s.a(j10) * (-862048943);
        int i10 = iA ^ (iA << 16);
        int i11 = i10 & 127;
        int i12 = this.f2027d;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        while (true) {
            long[] jArr = this.f2024a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j11 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j12 = (((long) i11) * 72340172838076673L) ^ j11;
            for (long j13 = (~j12) & (j12 - 72340172838076673L) & (-9187201950435737472L); j13 != 0; j13 &= j13 - 1) {
                int iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j13) >> 3) + i13) & i12;
                if (this.f2025b[iNumberOfTrailingZeros] == j10) {
                    return iNumberOfTrailingZeros;
                }
            }
            if ((j11 & ((~j11) << 6) & (-9187201950435737472L)) != 0) {
                return -1;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
    }

    public final int b(long j10) {
        int iA = a(j10);
        if (iA >= 0) {
            return this.f2026c[iA];
        }
        throw new NoSuchElementException("Cannot find value for key " + j10);
    }

    public final int c() {
        return this.f2027d;
    }

    public final int d() {
        return this.f2028e;
    }

    public final boolean e() {
        return this.f2028e == 0;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0065 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0067 A[LOOP:0: B:14:0x0027->B:28:0x0067, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x006a A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        if (tVar.d() != d()) {
            return false;
        }
        long[] jArr = this.f2025b;
        int[] iArr = this.f2026c;
        long[] jArr2 = this.f2024a;
        int length = jArr2.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr2[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8;
                    int i12 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i10 << 3) + i13;
                            if (iArr[i14] != tVar.b(jArr[i14])) {
                                return false;
                            }
                            i11 = 8;
                        }
                        j10 >>= i11;
                    }
                    if (i12 == i11) {
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

    public int hashCode() {
        long[] jArr = this.f2025b;
        int[] iArr = this.f2026c;
        long[] jArr2 = this.f2024a;
        int length = jArr2.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int iA = 0;
            while (true) {
                long j10 = jArr2[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            int i14 = (i11 << 3) + i13;
                            iA += iArr[i14] ^ s.a(jArr[i14]);
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        return iA;
                    }
                }
                if (i11 != length) {
                    i11++;
                } else {
                    i10 = iA;
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
        long[] jArr = this.f2025b;
        int[] iArr = this.f2026c;
        long[] jArr2 = this.f2024a;
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
                            int i17 = iArr[i16];
                            sb2.append(j11);
                            sb2.append(UrlUtils.EQUAL_MARK);
                            sb2.append(i17);
                            i13++;
                            if (i13 < this.f2028e) {
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
                    int i18 = i12;
                    if (i14 != 8) {
                        break;
                    }
                    i10 = i18;
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

    private t() {
        this.f2024a = v0.f2044a;
        this.f2025b = w.a();
        this.f2026c = r.a();
    }
}
