package com.google.android.exoplayer2.util;

import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

public final class d0 {

    private byte[] f26792a;

    private int f26793b;

    private int f26794c;

    public d0() {
        this.f26792a = p0.f26859f;
    }

    public String A(int i10) {
        return B(i10, com.google.common.base.c.f29403c);
    }

    public String B(int i10, Charset charset) {
        String str = new String(this.f26792a, this.f26793b, i10, charset);
        this.f26793b += i10;
        return str;
    }

    public int C() {
        return (D() << 21) | (D() << 14) | (D() << 7) | D();
    }

    public int D() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        this.f26793b = i10 + 1;
        return bArr[i10] & 255;
    }

    public int E() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f26793b = i10 + 2;
        int i13 = (bArr[i11] & 255) | i12;
        this.f26793b = i10 + 4;
        return i13;
    }

    public long F() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        long j10 = (((long) bArr[i10]) & 255) << 24;
        int i12 = i10 + 2;
        this.f26793b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 16);
        int i13 = i10 + 3;
        this.f26793b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 8);
        this.f26793b = i10 + 4;
        return (((long) bArr[i13]) & 255) | j12;
    }

    public int G() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = (bArr[i10] & 255) << 16;
        int i13 = i10 + 2;
        this.f26793b = i13;
        int i14 = ((bArr[i11] & 255) << 8) | i12;
        this.f26793b = i10 + 3;
        return (bArr[i13] & 255) | i14;
    }

    public int H() {
        int iN = n();
        if (iN >= 0) {
            return iN;
        }
        throw new IllegalStateException("Top bit not zero: " + iN);
    }

    public long I() {
        long jW = w();
        if (jW >= 0) {
            return jW;
        }
        throw new IllegalStateException("Top bit not zero: " + jW);
    }

    public int J() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f26793b = i10 + 2;
        return (bArr[i11] & 255) | i12;
    }

    public long K() {
        int i10;
        int i11;
        long j10 = this.f26792a[this.f26793b];
        int i12 = 7;
        while (true) {
            if (i12 >= 0) {
                int i13 = 1 << i12;
                if ((((long) i13) & j10) == 0) {
                    if (i12 < 6) {
                        j10 &= (long) (i13 - 1);
                        i11 = 7 - i12;
                        break;
                    }
                    if (i12 == 7) {
                        i11 = 1;
                        break;
                    }
                } else {
                    i12--;
                }
            }
            i11 = 0;
            break;
        }
        if (i11 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j10);
        }
        for (i10 = 1; i10 < i11; i10++) {
            byte b10 = this.f26792a[this.f26793b + i10];
            if ((b10 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j10);
            }
            j10 = (j10 << 6) | ((long) (b10 & Utf8.REPLACEMENT_BYTE));
        }
        this.f26793b += i11;
        return j10;
    }

    public void L(int i10) {
        N(b() < i10 ? new byte[i10] : this.f26792a, i10);
    }

    public void M(byte[] bArr) {
        N(bArr, bArr.length);
    }

    public void N(byte[] bArr, int i10) {
        this.f26792a = bArr;
        this.f26794c = i10;
        this.f26793b = 0;
    }

    public void O(int i10) {
        a.a(i10 >= 0 && i10 <= this.f26792a.length);
        this.f26794c = i10;
    }

    public void P(int i10) {
        a.a(i10 >= 0 && i10 <= this.f26794c);
        this.f26793b = i10;
    }

    public void Q(int i10) {
        P(this.f26793b + i10);
    }

    public int a() {
        return this.f26794c - this.f26793b;
    }

    public int b() {
        return this.f26792a.length;
    }

    public void c(int i10) {
        if (i10 > b()) {
            this.f26792a = Arrays.copyOf(this.f26792a, i10);
        }
    }

    public byte[] d() {
        return this.f26792a;
    }

    public int e() {
        return this.f26793b;
    }

    public int f() {
        return this.f26794c;
    }

    public char g() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        return (char) ((bArr[i10 + 1] & 255) | ((bArr[i10] & 255) << 8));
    }

    public int h() {
        return this.f26792a[this.f26793b] & 255;
    }

    public void i(c0 c0Var, int i10) {
        j(c0Var.f26788a, 0, i10);
        c0Var.p(0);
    }

    public void j(byte[] bArr, int i10, int i11) {
        System.arraycopy(this.f26792a, this.f26793b, bArr, i10, i11);
        this.f26793b += i11;
    }

    public String k(char c10) {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f26793b;
        while (i10 < this.f26794c && this.f26792a[i10] != c10) {
            i10++;
        }
        byte[] bArr = this.f26792a;
        int i11 = this.f26793b;
        String strE = p0.E(bArr, i11, i10 - i11);
        this.f26793b = i10;
        if (i10 < this.f26794c) {
            this.f26793b = i10 + 1;
        }
        return strE;
    }

    public double l() {
        return Double.longBitsToDouble(w());
    }

    public float m() {
        return Float.intBitsToFloat(n());
    }

    public int n() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = (bArr[i10] & 255) << 24;
        int i13 = i10 + 2;
        this.f26793b = i13;
        int i14 = ((bArr[i11] & 255) << 16) | i12;
        int i15 = i10 + 3;
        this.f26793b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 8);
        this.f26793b = i10 + 4;
        return (bArr[i15] & 255) | i16;
    }

    public int o() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = ((bArr[i10] & 255) << 24) >> 8;
        int i13 = i10 + 2;
        this.f26793b = i13;
        int i14 = ((bArr[i11] & 255) << 8) | i12;
        this.f26793b = i10 + 3;
        return (bArr[i13] & 255) | i14;
    }

    public String p() {
        if (a() == 0) {
            return null;
        }
        int i10 = this.f26793b;
        while (i10 < this.f26794c && !p0.v0(this.f26792a[i10])) {
            i10++;
        }
        int i11 = this.f26793b;
        if (i10 - i11 >= 3) {
            byte[] bArr = this.f26792a;
            if (bArr[i11] == -17 && bArr[i11 + 1] == -69 && bArr[i11 + 2] == -65) {
                this.f26793b = i11 + 3;
            }
        }
        byte[] bArr2 = this.f26792a;
        int i12 = this.f26793b;
        String strE = p0.E(bArr2, i12, i10 - i12);
        this.f26793b = i10;
        int i13 = this.f26794c;
        if (i10 == i13) {
            return strE;
        }
        byte[] bArr3 = this.f26792a;
        if (bArr3[i10] == 13) {
            int i14 = i10 + 1;
            this.f26793b = i14;
            if (i14 == i13) {
                return strE;
            }
        }
        int i15 = this.f26793b;
        if (bArr3[i15] == 10) {
            this.f26793b = i15 + 1;
        }
        return strE;
    }

    public int q() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = bArr[i10] & 255;
        int i13 = i10 + 2;
        this.f26793b = i13;
        int i14 = ((bArr[i11] & 255) << 8) | i12;
        int i15 = i10 + 3;
        this.f26793b = i15;
        int i16 = i14 | ((bArr[i13] & 255) << 16);
        this.f26793b = i10 + 4;
        return ((bArr[i15] & 255) << 24) | i16;
    }

    public long r() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        long j10 = ((long) bArr[i10]) & 255;
        int i12 = i10 + 2;
        this.f26793b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 8);
        int i13 = i10 + 3;
        this.f26793b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 16);
        int i14 = i10 + 4;
        this.f26793b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 24);
        int i15 = i10 + 5;
        this.f26793b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 32);
        int i16 = i10 + 6;
        this.f26793b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 40);
        int i17 = i10 + 7;
        this.f26793b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 48);
        this.f26793b = i10 + 8;
        return ((((long) bArr[i17]) & 255) << 56) | j16;
    }

    public short s() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = bArr[i10] & 255;
        this.f26793b = i10 + 2;
        return (short) (((bArr[i11] & 255) << 8) | i12);
    }

    public long t() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        long j10 = ((long) bArr[i10]) & 255;
        int i12 = i10 + 2;
        this.f26793b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 8);
        int i13 = i10 + 3;
        this.f26793b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 16);
        this.f26793b = i10 + 4;
        return ((((long) bArr[i13]) & 255) << 24) | j12;
    }

    public int u() {
        int iQ = q();
        if (iQ >= 0) {
            return iQ;
        }
        throw new IllegalStateException("Top bit not zero: " + iQ);
    }

    public int v() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = bArr[i10] & 255;
        this.f26793b = i10 + 2;
        return ((bArr[i11] & 255) << 8) | i12;
    }

    public long w() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        long j10 = (((long) bArr[i10]) & 255) << 56;
        int i12 = i10 + 2;
        this.f26793b = i12;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 48);
        int i13 = i10 + 3;
        this.f26793b = i13;
        long j12 = j11 | ((((long) bArr[i12]) & 255) << 40);
        int i14 = i10 + 4;
        this.f26793b = i14;
        long j13 = j12 | ((((long) bArr[i13]) & 255) << 32);
        int i15 = i10 + 5;
        this.f26793b = i15;
        long j14 = j13 | ((((long) bArr[i14]) & 255) << 24);
        int i16 = i10 + 6;
        this.f26793b = i16;
        long j15 = j14 | ((((long) bArr[i15]) & 255) << 16);
        int i17 = i10 + 7;
        this.f26793b = i17;
        long j16 = j15 | ((((long) bArr[i16]) & 255) << 8);
        this.f26793b = i10 + 8;
        return (((long) bArr[i17]) & 255) | j16;
    }

    public String x() {
        return k((char) 0);
    }

    public String y(int i10) {
        if (i10 == 0) {
            return "";
        }
        int i11 = this.f26793b;
        int i12 = (i11 + i10) - 1;
        String strE = p0.E(this.f26792a, i11, (i12 >= this.f26794c || this.f26792a[i12] != 0) ? i10 : i10 - 1);
        this.f26793b += i10;
        return strE;
    }

    public short z() {
        byte[] bArr = this.f26792a;
        int i10 = this.f26793b;
        int i11 = i10 + 1;
        this.f26793b = i11;
        int i12 = (bArr[i10] & 255) << 8;
        this.f26793b = i10 + 2;
        return (short) ((bArr[i11] & 255) | i12);
    }

    public d0(int i10) {
        this.f26792a = new byte[i10];
        this.f26794c = i10;
    }

    public d0(byte[] bArr) {
        this.f26792a = bArr;
        this.f26794c = bArr.length;
    }

    public d0(byte[] bArr, int i10) {
        this.f26792a = bArr;
        this.f26794c = i10;
    }
}
