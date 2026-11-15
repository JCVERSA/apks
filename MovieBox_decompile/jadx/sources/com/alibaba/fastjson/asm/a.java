package com.alibaba.fastjson.asm;

public class a {

    public byte[] f17454a;

    public int f17455b;

    public a() {
        this.f17454a = new byte[64];
    }

    private void a(int i10) {
        byte[] bArr = this.f17454a;
        int length = bArr.length * 2;
        int i11 = this.f17455b;
        int i12 = i10 + i11;
        if (length <= i12) {
            length = i12;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, i11);
        this.f17454a = bArr2;
    }

    a b(int i10, int i11) {
        int i12 = this.f17455b;
        if (i12 + 2 > this.f17454a.length) {
            a(2);
        }
        byte[] bArr = this.f17454a;
        bArr[i12] = (byte) i10;
        bArr[i12 + 1] = (byte) i11;
        this.f17455b = i12 + 2;
        return this;
    }

    public a c(int i10, int i11) {
        int i12 = this.f17455b;
        if (i12 + 3 > this.f17454a.length) {
            a(3);
        }
        byte[] bArr = this.f17454a;
        bArr[i12] = (byte) i10;
        bArr[i12 + 1] = (byte) (i11 >>> 8);
        bArr[i12 + 2] = (byte) i11;
        this.f17455b = i12 + 3;
        return this;
    }

    public a d(int i10) {
        int i11 = this.f17455b;
        int i12 = i11 + 1;
        if (i12 > this.f17454a.length) {
            a(1);
        }
        this.f17454a[i11] = (byte) i10;
        this.f17455b = i12;
        return this;
    }

    public a e(byte[] bArr, int i10, int i11) {
        if (this.f17455b + i11 > this.f17454a.length) {
            a(i11);
        }
        if (bArr != null) {
            System.arraycopy(bArr, i10, this.f17454a, this.f17455b, i11);
        }
        this.f17455b += i11;
        return this;
    }

    public a f(int i10) {
        int i11 = this.f17455b;
        if (i11 + 4 > this.f17454a.length) {
            a(4);
        }
        byte[] bArr = this.f17454a;
        bArr[i11] = (byte) (i10 >>> 24);
        bArr[i11 + 1] = (byte) (i10 >>> 16);
        bArr[i11 + 2] = (byte) (i10 >>> 8);
        bArr[i11 + 3] = (byte) i10;
        this.f17455b = i11 + 4;
        return this;
    }

    public a g(int i10) {
        int i11 = this.f17455b;
        if (i11 + 2 > this.f17454a.length) {
            a(2);
        }
        byte[] bArr = this.f17454a;
        bArr[i11] = (byte) (i10 >>> 8);
        bArr[i11 + 1] = (byte) i10;
        this.f17455b = i11 + 2;
        return this;
    }

    public a h(String str) {
        int length = str.length();
        int i10 = this.f17455b;
        if (i10 + 2 + length > this.f17454a.length) {
            a(length + 2);
        }
        byte[] bArr = this.f17454a;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (length >>> 8);
        int i12 = i10 + 2;
        bArr[i11] = (byte) length;
        int i13 = 0;
        while (i13 < length) {
            char cCharAt = str.charAt(i13);
            if ((cCharAt < 1 || cCharAt > 127) && (cCharAt < 19968 || cCharAt > 40959)) {
                throw new UnsupportedOperationException();
            }
            bArr[i12] = (byte) cCharAt;
            i13++;
            i12++;
        }
        this.f17455b = i12;
        return this;
    }

    public a(int i10) {
        this.f17454a = new byte[i10];
    }
}
