package com.yandex.mobile.ads.impl;

import java.util.Arrays;

final class d41 {
    private final int a;
    private boolean b;
    private boolean c;
    public byte[] d;
    public int e;

    public d41(int i) {
        this.a = i;
        byte[] bArr = new byte[131];
        this.d = bArr;
        bArr[2] = 1;
    }

    public final void a(byte[] bArr, int i, int i2) {
        if (this.b) {
            int i3 = i2 - i;
            byte[] bArr2 = this.d;
            int length = bArr2.length;
            int i4 = this.e + i3;
            if (length < i4) {
                this.d = Arrays.copyOf(bArr2, i4 * 2);
            }
            System.arraycopy(bArr, i, this.d, this.e, i3);
            this.e += i3;
        }
    }

    public final void b() {
        this.b = false;
        this.c = false;
    }

    public final void b(int i) {
        if (!this.b) {
            boolean z = i == this.a;
            this.b = z;
            if (z) {
                this.e = 3;
                this.c = false;
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final boolean a(int i) {
        if (!this.b) {
            return false;
        }
        this.e -= i;
        this.b = false;
        this.c = true;
        return true;
    }

    public final boolean a() {
        return this.c;
    }
}
