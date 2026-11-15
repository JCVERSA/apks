package com.yandex.mobile.ads.impl;

public final class cj2 {
    private final byte[] a;
    private final int b;
    private int c;
    private int d;

    public cj2(byte[] bArr) {
        this.a = bArr;
        this.b = bArr.length;
    }

    public final int a() {
        return (this.c * 8) + this.d;
    }

    public final boolean b() {
        boolean z = (((this.a[this.c] & 255) >> this.d) & 1) == 1;
        b(1);
        return z;
    }

    public final int a(int i) {
        int i2 = this.c;
        int iMin = Math.min(i, 8 - this.d);
        int i3 = i2 + 1;
        int i4 = ((this.a[i2] & 255) >> this.d) & (255 >> (8 - iMin));
        while (iMin < i) {
            i4 |= (this.a[i3] & 255) << iMin;
            iMin += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        b(i);
        return i5;
    }

    public final void b(int i) {
        int i2 = i / 8;
        int i3 = this.c + i2;
        this.c = i3;
        int i4 = (i - (i2 * 8)) + this.d;
        this.d = i4;
        if (i4 > 7) {
            this.c = i3 + 1;
            this.d = i4 - 8;
        }
        int i5 = this.c;
        if (i5 >= 0) {
            int i6 = this.b;
            if (i5 < i6) {
                return;
            }
            if (i5 == i6 && this.d == 0) {
                return;
            }
        }
        throw new IllegalStateException();
    }
}
