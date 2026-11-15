package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.nio.charset.Charset;
import java.util.Arrays;
import okio.Utf8;

public final class ag1 {
    private byte[] a;
    private int b;
    private int c;

    public ag1() {
        this.a = f92.f;
    }

    public final long A() {
        int i;
        int i2;
        long j = this.a[this.b];
        int i3 = 7;
        while (true) {
            if (i3 >= 0) {
                int i4 = 1 << i3;
                if ((((long) i4) & j) == 0) {
                    if (i3 < 6) {
                        j &= (long) (i4 - 1);
                        i2 = 7 - i3;
                        break;
                    }
                    if (i3 == 7) {
                        i2 = 1;
                        break;
                    }
                } else {
                    i3--;
                }
            }
            i2 = 0;
            break;
        }
        if (i2 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
        }
        for (i = 1; i < i2; i++) {
            byte b = this.a[this.b + i];
            if ((b & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
            }
            j = (j << 6) | ((long) (b & Utf8.REPLACEMENT_BYTE));
        }
        this.b += i2;
        return j;
    }

    public final int a() {
        return this.c - this.b;
    }

    public final int b() {
        return this.a.length;
    }

    public final byte[] c() {
        return this.a;
    }

    public final int d() {
        return this.b;
    }

    public final int e() {
        return this.c;
    }

    public final char f() {
        byte[] bArr = this.a;
        int i = this.b;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public final int g() {
        return this.a[this.b] & 255;
    }

    public final int h() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24);
        int i3 = i + 3;
        int i4 = i2 | ((bArr[i + 2] & 255) << 8);
        this.b = i + 4;
        return (bArr[i3] & 255) | i4;
    }

    public final int i() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 2;
        int i3 = ((bArr[i + 1] & 255) << 8) | (((bArr[i] & 255) << 24) >> 8);
        this.b = i + 3;
        return (bArr[i2] & 255) | i3;
    }

    @Nullable
    public final String j() {
        int i = this.c;
        int i2 = this.b;
        if (i - i2 == 0) {
            return null;
        }
        while (i2 < this.c) {
            byte b = this.a[i2];
            int i3 = f92.a;
            if (b == 10 || b == 13) {
                break;
            }
            i2++;
        }
        int i4 = this.b;
        if (i2 - i4 >= 3) {
            byte[] bArr = this.a;
            if (bArr[i4] == -17 && bArr[i4 + 1] == -69 && bArr[i4 + 2] == -65) {
                this.b = i4 + 3;
            }
        }
        byte[] bArr2 = this.a;
        int i5 = this.b;
        String strA = f92.a(bArr2, i5, i2 - i5);
        this.b = i2;
        int i6 = this.c;
        if (i2 == i6) {
            return strA;
        }
        byte[] bArr3 = this.a;
        if (bArr3[i2] == 13) {
            int i7 = i2 + 1;
            this.b = i7;
            if (i7 == i6) {
                return strA;
            }
        }
        int i8 = this.b;
        if (bArr3[i8] == 10) {
            this.b = i8 + 1;
        }
        return strA;
    }

    public final int k() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
        int i3 = i + 3;
        int i4 = i2 | ((bArr[i + 2] & 255) << 16);
        this.b = i + 4;
        return ((bArr[i3] & 255) << 24) | i4;
    }

    public final long l() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 7;
        long j = (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        this.b = i + 8;
        return ((((long) bArr[i2]) & 255) << 56) | j;
    }

    public final short m() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public final long n() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 3;
        long j = (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16);
        this.b = i + 4;
        return ((((long) bArr[i2]) & 255) << 24) | j;
    }

    public final int o() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public final long p() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 7;
        long j = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
        this.b = i + 8;
        return (((long) bArr[i2]) & 255) | j;
    }

    @Nullable
    public final String q() {
        int i = this.c;
        int i2 = this.b;
        if (i - i2 == 0) {
            return null;
        }
        while (i2 < this.c && this.a[i2] != 0) {
            i2++;
        }
        byte[] bArr = this.a;
        int i3 = this.b;
        String strA = f92.a(bArr, i3, i2 - i3);
        this.b = i2;
        if (i2 < this.c) {
            this.b = i2 + 1;
        }
        return strA;
    }

    public final short r() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        int i3 = (bArr[i] & 255) << 8;
        this.b = i + 2;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public final int s() {
        return t() | (t() << 21) | (t() << 14) | (t() << 7);
    }

    public final int t() {
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & 255;
    }

    public final int u() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
        this.b = i + 4;
        return i2;
    }

    public final long v() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 3;
        long j = ((((long) bArr[i]) & 255) << 24) | ((((long) bArr[i + 1]) & 255) << 16) | ((((long) bArr[i + 2]) & 255) << 8);
        this.b = i + 4;
        return (((long) bArr[i2]) & 255) | j;
    }

    public final int w() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 2;
        int i3 = ((bArr[i + 1] & 255) << 8) | ((bArr[i] & 255) << 16);
        this.b = i + 3;
        return (bArr[i2] & 255) | i3;
    }

    public final int x() {
        int iH = h();
        if (iH >= 0) {
            return iH;
        }
        throw new IllegalStateException(oe.a("Top bit not zero: ", iH));
    }

    public final long y() {
        long jP = p();
        if (jP >= 0) {
            return jP;
        }
        throw new IllegalStateException("Top bit not zero: " + jP);
    }

    public final int z() {
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        int i3 = (bArr[i] & 255) << 8;
        this.b = i + 2;
        return (bArr[i2] & 255) | i3;
    }

    public final void a(int i) {
        byte[] bArr = this.a;
        if (i > bArr.length) {
            this.a = Arrays.copyOf(bArr, i);
        }
    }

    public final String b(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = this.b;
        int i3 = (i2 + i) - 1;
        String strA = f92.a(this.a, i2, (i3 >= this.c || this.a[i3] != 0) ? i : i - 1);
        this.b += i;
        return strA;
    }

    public final void c(int i) {
        byte[] bArr = this.a;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        this.a = bArr;
        this.c = i;
        this.b = 0;
    }

    public final void d(int i) {
        if (i < 0 || i > this.a.length) {
            throw new IllegalArgumentException();
        }
        this.c = i;
    }

    public final void e(int i) {
        if (i < 0 || i > this.c) {
            throw new IllegalArgumentException();
        }
        this.b = i;
    }

    public final void f(int i) {
        e(this.b + i);
    }

    public ag1(int i) {
        this.a = new byte[i];
        this.c = i;
    }

    public final void a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public ag1(int i, byte[] bArr) {
        this.a = bArr;
        this.c = i;
    }

    public final void a(int i, byte[] bArr) {
        this.a = bArr;
        this.c = i;
        this.b = 0;
    }

    public ag1(byte[] bArr) {
        this.a = bArr;
        this.c = bArr.length;
    }

    public final void a(byte[] bArr) {
        int length = bArr.length;
        this.a = bArr;
        this.c = length;
        this.b = 0;
    }

    public final String a(int i, Charset charset) {
        String str = new String(this.a, this.b, i, charset);
        this.b += i;
        return str;
    }
}
