package defpackage;

import com.google.android.gms.internal.ads.s7;
import com.google.android.gms.internal.ads.zzfxb;
import com.transsion.socket.pkgdata.SocketData;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okio.Utf8;
import org.apache.commons.lang3.CharUtils;

public final class u4h {
    public static final char[] d = {CharUtils.CR, '\n'};
    public static final char[] e = {'\n'};
    public static final zzfxb f = zzfxb.zzr(StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    public byte[] a;
    public int b;
    public int c;

    public u4h(byte[] bArr, int i) {
        this.a = bArr;
        this.c = i;
    }

    public static int q(int i, int i2, int i3, int i4) {
        return s7.e((byte) 0, z6i.a(((i & 7) << 2) | ((i2 & 48) >> 4)), z6i.a(((i3 & 60) >> 2) | ((i2 & 15) << 4)), z6i.a((i4 & 63) | ((i3 & 3) << 6)));
    }

    public static int r(Charset charset) {
        n7g.e(f.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    public static boolean t(byte b) {
        return (b & 192) == 128;
    }

    public final int A() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & 255;
        int i6 = i + 3;
        this.b = i6;
        int i7 = bArr[i4] & 255;
        this.b = i + 4;
        return (bArr[i6] & 255) | (i3 << 24) | (i5 << 16) | (i7 << 8);
    }

    public final int B() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & 255;
        this.b = i + 3;
        return (bArr[i4] & 255) | ((i3 << 24) >> 8) | (i5 << 8);
    }

    public final int C() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & 255;
        int i6 = i + 3;
        this.b = i6;
        int i7 = bArr[i4] & 255;
        this.b = i + 4;
        return ((bArr[i6] & 255) << 24) | (i5 << 8) | i3 | (i7 << 16);
    }

    public final int D() {
        int iC = C();
        if (iC >= 0) {
            return iC;
        }
        throw new IllegalStateException("Top bit not zero: " + iC);
    }

    public final int E() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public final int F() {
        return G() | (G() << 21) | (G() << 14) | (G() << 7);
    }

    public final int G() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & 255;
    }

    public final int H() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        int i4 = bArr[i2] & 255;
        this.b = i + 4;
        return (i3 << 8) | i4;
    }

    public final int I() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.b = i4;
        int i5 = bArr[i2] & 255;
        this.b = i + 3;
        return (bArr[i4] & 255) | (i3 << 16) | (i5 << 8);
    }

    public final int J() {
        int iA = A();
        if (iA >= 0) {
            return iA;
        }
        throw new IllegalStateException("Top bit not zero: " + iA);
    }

    public final int K() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return (bArr[i2] & 255) | (i3 << 8);
    }

    public final long L() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.b = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.b = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.b = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.b = i7;
        long j6 = bArr[i6];
        int i8 = i + 7;
        this.b = i8;
        long j7 = bArr[i7];
        this.b = i + 8;
        return ((((long) bArr[i8]) & 255) << 56) | ((j7 & 255) << 48) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40);
    }

    public final long M() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.b = i4;
        long j3 = bArr[i3];
        this.b = i + 4;
        return ((((long) bArr[i4]) & 255) << 24) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    public final long N() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.b = i4;
        long j3 = bArr[i3];
        int i5 = i + 4;
        this.b = i5;
        long j4 = bArr[i4];
        int i6 = i + 5;
        this.b = i6;
        long j5 = bArr[i5];
        int i7 = i + 6;
        this.b = i7;
        long j6 = bArr[i6];
        int i8 = i + 7;
        this.b = i8;
        long j7 = bArr[i7];
        this.b = i + 8;
        return (((long) bArr[i8]) & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    public final long O() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        long j = bArr[i];
        int i3 = i + 2;
        this.b = i3;
        long j2 = bArr[i2];
        int i4 = i + 3;
        this.b = i4;
        long j3 = bArr[i3];
        this.b = i + 4;
        return (((long) bArr[i4]) & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    public final long P() {
        long j = 0;
        for (int i = 0; i < 9; i++) {
            if (this.b == this.c) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long jG = G();
            j |= (127 & jG) << (i * 7);
            if ((jG & 128) == 0) {
                break;
            }
        }
        return j;
    }

    public final long Q() {
        long jN = N();
        if (jN >= 0) {
            return jN;
        }
        throw new IllegalStateException("Top bit not zero: " + jN);
    }

    public final long R() {
        int i;
        int i2;
        long j = this.a[this.b];
        int i3 = 7;
        while (true) {
            i = 0;
            if (i3 < 0) {
                break;
            }
            int i4 = 1 << i3;
            if ((((long) i4) & j) == 0) {
                if (i3 >= 6) {
                    if (i3 != 7) {
                        break;
                    }
                    i = 1;
                    break;
                }
                j &= (long) (i4 - 1);
                i = 7 - i3;
                break;
            }
            i3--;
        }
        if (i == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
        }
        for (i2 = 1; i2 < i; i2++) {
            byte b = this.a[this.b + i2];
            if ((b & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
            }
            j = (j << 6) | ((long) (b & Utf8.REPLACEMENT_BYTE));
        }
        this.b += i;
        return j;
    }

    public final String S(char c) {
        if (u() == 0) {
            return null;
        }
        int i = this.b;
        while (i < this.c && this.a[i] != 0) {
            i++;
        }
        byte[] bArr = this.a;
        int i2 = this.b;
        String strC = kfh.c(bArr, i2, i - i2);
        this.b = i;
        if (i < this.c) {
            this.b = i + 1;
        }
        return strC;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:42:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb A[SYNTHETIC] */
    public final String T(Charset charset) {
        byte[] bArr;
        n7g.e(f.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (u() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            c();
        }
        int i = 1;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(charset2)) {
            i = 2;
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: ".concat(String.valueOf(charset)));
            }
        }
        int i2 = this.b;
        while (true) {
            int i3 = this.c;
            if (i2 >= i3 - (i - 1)) {
                i2 = i3;
                break;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && kfh.m(this.a[i2])) {
                break;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr2 = this.a;
                if (bArr2[i2] == 0 && kfh.m(bArr2[i2 + 1])) {
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr = this.a;
                    if (bArr[i2 + 1] == 0 && kfh.m(bArr[i2])) {
                        break;
                    }
                }
                i2 += i;
            } else {
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr = this.a;
                    if (bArr[i2 + 1] == 0) {
                        continue;
                    }
                }
                i2 += i;
            }
        }
        String strB = b(i2 - this.b, charset);
        if (this.b != this.c && p(charset, d) == '\r') {
            p(charset, e);
        }
        return strB;
    }

    public final String a(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.b;
        int i3 = (i2 + i) - 1;
        String strC = kfh.c(this.a, i2, (i3 >= this.c || this.a[i3] != 0) ? i : i - 1);
        this.b += i;
        return strC;
    }

    public final String b(int i, Charset charset) {
        byte[] bArr = this.a;
        int i2 = this.b;
        String str = new String(bArr, i2, i, charset);
        this.b = i2 + i;
        return str;
    }

    public final Charset c() {
        if (u() >= 3) {
            byte[] bArr = this.a;
            int i = this.b;
            if (bArr[i] == -17 && bArr[i + 1] == -69 && bArr[i + 2] == -65) {
                this.b = i + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (u() < 2) {
            return null;
        }
        byte[] bArr2 = this.a;
        int i2 = this.b;
        byte b = bArr2[i2];
        if (b == -2) {
            if (bArr2[i2 + 1] != -1) {
                return null;
            }
            this.b = i2 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b != -1 || bArr2[i2 + 1] != -2) {
            return null;
        }
        this.b = i2 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public final short d() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public final short e() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return (short) ((bArr[i2] & 255) | (i3 << 8));
    }

    public final void f(int i) {
        byte[] bArr = this.a;
        if (i > bArr.length) {
            this.a = Arrays.copyOf(bArr, i);
        }
    }

    public final void g(p3h p3hVar, int i) {
        h(p3hVar.a, 0, i);
        p3hVar.l(0);
    }

    public final void h(byte[] bArr, int i, int i2) {
        System.arraycopy(this.a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public final void i(int i) {
        byte[] bArr = this.a;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        j(bArr, i);
    }

    public final void j(byte[] bArr, int i) {
        this.a = bArr;
        this.c = i;
        this.b = 0;
    }

    public final void k(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.a.length) {
            z = true;
        }
        n7g.d(z);
        this.c = i;
    }

    public final void l(int i) {
        boolean z = false;
        if (i >= 0 && i <= this.c) {
            z = true;
        }
        n7g.d(z);
        this.b = i;
    }

    public final void m(int i) {
        l(this.b + i);
    }

    public final byte[] n() {
        return this.a;
    }

    public final char o(ByteOrder byteOrder, int i) {
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.a;
            int i2 = this.b + i;
            return q6i.a(bArr[i2], bArr[i2 + 1]);
        }
        byte[] bArr2 = this.a;
        int i3 = this.b + i;
        return q6i.a(bArr2[i3 + 1], bArr2[i3]);
    }

    public final char p(Charset charset, char[] cArr) {
        int iS;
        if (u() >= r(charset) && (iS = s(charset)) != 0) {
            int i = iS >>> 8;
            if (!Character.isSupplementaryCodePoint(i)) {
                long j = i;
                char c = (char) j;
                v2i.h(((long) c) == j, "Out of range: %s", j);
                for (char c2 : cArr) {
                    if (c2 == c) {
                        this.b += s7.b(iS & 255);
                        return c;
                    }
                }
            }
        }
        return (char) 0;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0095  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c8  */
    public final int s(Charset charset) {
        int codePoint;
        int i;
        n7g.e(f.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (u() < r(charset)) {
            throw new IndexOutOfBoundsException("position=" + this.b + ", limit=" + this.c);
        }
        int i2 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b = this.a[this.b];
            if ((b & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                codePoint = b & 255;
                return (codePoint << 8) | i2;
            }
            return 0;
        }
        if (charset.equals(StandardCharsets.UTF_8)) {
            byte b2 = this.a[this.b];
            if ((b2 & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                i = 1;
            } else if ((b2 & 224) == 192 && u() >= 2 && t(this.a[this.b + 1])) {
                i = 2;
            } else if ((this.a[this.b] & 240) == 224 && u() >= 3) {
                byte[] bArr = this.a;
                int i3 = this.b;
                if (t(bArr[i3 + 1]) && t(bArr[i3 + 2])) {
                    i = 3;
                } else if ((this.a[this.b] & 248) == 240) {
                    i = 0;
                } else {
                    i = 0;
                }
            } else if ((this.a[this.b] & 248) == 240 || u() < 4) {
                i = 0;
            } else {
                byte[] bArr2 = this.a;
                int i4 = this.b;
                if (t(bArr2[i4 + 1]) && t(bArr2[i4 + 2]) && t(bArr2[i4 + 3])) {
                    i = 4;
                } else {
                    i = 0;
                }
            }
            if (i == 1) {
                codePoint = this.a[this.b] & 255;
            } else if (i == 2) {
                byte[] bArr3 = this.a;
                int i5 = this.b;
                codePoint = q(0, 0, bArr3[i5], bArr3[i5 + 1]);
            } else {
                if (i != 3) {
                    if (i == 4) {
                        byte[] bArr4 = this.a;
                        int i6 = this.b;
                        codePoint = q(bArr4[i6], bArr4[i6 + 1], bArr4[i6 + 2], bArr4[i6 + 3]);
                    }
                    return 0;
                }
                byte[] bArr5 = this.a;
                int i7 = this.b;
                codePoint = q(0, bArr5[i7] & 15, bArr5[i7 + 1], bArr5[i7 + 2]);
            }
            i2 = i;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char cO = o(byteOrder, 0);
            if (!Character.isHighSurrogate(cO) || u() < 4) {
                codePoint = cO;
                i2 = 2;
            } else {
                codePoint = Character.toCodePoint(cO, o(byteOrder, 2));
                i2 = 4;
            }
        }
        return (codePoint << 8) | i2;
    }

    public final int u() {
        return Math.max(this.c - this.b, 0);
    }

    public final int v() {
        return this.a.length;
    }

    public final int w() {
        return this.b;
    }

    public final int x() {
        return this.c;
    }

    public final int y(Charset charset) {
        int iS = s(charset);
        if (iS != 0) {
            return s7.b(iS >>> 8);
        }
        return 1114112;
    }

    public final int z() {
        return this.a[this.b] & 255;
    }

    public u4h() {
        this.a = kfh.c;
    }

    public u4h(int i) {
        this.a = new byte[i];
        this.c = i;
    }

    public u4h(byte[] bArr) {
        this.a = bArr;
        this.c = bArr.length;
    }
}
