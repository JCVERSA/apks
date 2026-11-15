package com.yandex.mobile.ads.impl;

import java.util.NoSuchElementException;

final class zo0 {
    private int a = 0;
    private int b = -1;
    private int c = 0;
    private int[] d = new int[16];
    private int e = 15;

    public final void a(int i) {
        int i2 = this.c;
        int[] iArr = this.d;
        if (i2 == iArr.length) {
            int length = iArr.length << 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
            int[] iArr2 = new int[length];
            int length2 = iArr.length;
            int i3 = this.a;
            int i4 = length2 - i3;
            System.arraycopy(iArr, i3, iArr2, 0, i4);
            System.arraycopy(this.d, 0, iArr2, i4, i3);
            this.a = 0;
            this.b = this.c - 1;
            this.d = iArr2;
            this.e = length - 1;
        }
        int i5 = (this.b + 1) & this.e;
        this.b = i5;
        this.d[i5] = i;
        this.c++;
    }

    public final boolean b() {
        return this.c == 0;
    }

    public final int c() {
        int i = this.c;
        if (i == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.d;
        int i2 = this.a;
        int i3 = iArr[i2];
        this.a = (i2 + 1) & this.e;
        this.c = i - 1;
        return i3;
    }

    public final void a() {
        this.a = 0;
        this.b = -1;
        this.c = 0;
    }
}
