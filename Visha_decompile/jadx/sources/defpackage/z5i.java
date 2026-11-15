package defpackage;

import com.google.android.gms.internal.ads.zzfzh;
import java.math.RoundingMode;
import java.util.Arrays;

public final class z5i {
    public final String a;
    public final char[] b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final byte[] g;
    public final boolean[] h;
    public final boolean i;

    /* JADX WARN: Illegal instructions before constructor call */
    public z5i(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < cArr.length; i++) {
            char c = cArr[i];
            boolean z = true;
            v2i.g(c < 128, "Non-ASCII character: %s", c);
            if (bArr[c] != -1) {
                z = false;
            }
            v2i.g(z, "Duplicate character: %s", c);
            bArr[c] = (byte) i;
        }
        this(str, cArr, bArr, false);
    }

    public final char a(int i) {
        return this.b[i];
    }

    public final int b(char c) throws zzfzh {
        if (c > 127) {
            throw new zzfzh("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c))));
        }
        byte b = this.g[c];
        if (b != -1) {
            return b;
        }
        if (c <= ' ' || c == 127) {
            throw new zzfzh("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c))));
        }
        throw new zzfzh("Unrecognized character: " + c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    public final z5i c() {
        boolean z;
        int i = 0;
        while (true) {
            char[] cArr = this.b;
            int length = cArr.length;
            if (i >= length) {
                return this;
            }
            if (d2i.e(cArr[i])) {
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    if (d2i.d(cArr[i2])) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                v2i.m(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr2 = new char[cArr.length];
                for (int i3 = 0; i3 < cArr.length; i3++) {
                    char c = cArr[i3];
                    if (d2i.e(c)) {
                        c ^= 32;
                    }
                    cArr2[i3] = (char) c;
                }
                z5i z5iVar = new z5i(this.a.concat(".lowerCase()"), cArr2);
                if (!this.i || z5iVar.i) {
                    return z5iVar;
                }
                byte[] bArr = z5iVar.g;
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                for (int i4 = 65; i4 <= 90; i4++) {
                    int i5 = i4 | 32;
                    byte b = bArr[i4];
                    byte b2 = bArr[i5];
                    if (b == -1) {
                        bArrCopyOf[i4] = b2;
                    } else {
                        char c2 = (char) i4;
                        char c3 = (char) i5;
                        if (b2 != -1) {
                            throw new IllegalStateException(j3i.b("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c2), Character.valueOf(c3)));
                        }
                        bArrCopyOf[i5] = b;
                    }
                }
                return new z5i(z5iVar.a.concat(".ignoreCase()"), z5iVar.b, bArrCopyOf, true);
            }
            i++;
        }
    }

    public final boolean d(int i) {
        return this.h[i % this.e];
    }

    public final boolean e(char c) {
        byte[] bArr = this.g;
        return bArr.length > 61 && bArr[61] != -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z5i) {
            z5i z5iVar = (z5i) obj;
            if (this.i == z5iVar.i && Arrays.equals(this.b, z5iVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (true != this.i ? 1237 : 1231);
    }

    public final String toString() {
        return this.a;
    }

    public z5i(String str, char[] cArr, byte[] bArr, boolean z) {
        this.a = str;
        cArr.getClass();
        this.b = cArr;
        try {
            int length = cArr.length;
            int iC = m6i.c(length, RoundingMode.UNNECESSARY);
            this.d = iC;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iC);
            int i = 1 << (3 - iNumberOfTrailingZeros);
            this.e = i;
            this.f = iC >> iNumberOfTrailingZeros;
            this.c = length - 1;
            this.g = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.f; i2++) {
                zArr[m6i.b(i2 * 8, this.d, RoundingMode.CEILING)] = true;
            }
            this.h = zArr;
            this.i = z;
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
        }
    }
}
