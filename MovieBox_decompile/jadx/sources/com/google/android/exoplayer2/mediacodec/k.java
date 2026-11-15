package com.google.android.exoplayer2.mediacodec;

import java.util.NoSuchElementException;

final class k {

    private int f24748a = 0;

    private int f24749b = -1;

    private int f24750c = 0;

    private int[] f24751d;

    private int f24752e;

    public k() {
        int[] iArr = new int[16];
        this.f24751d = iArr;
        this.f24752e = iArr.length - 1;
    }

    private void c() {
        int[] iArr = this.f24751d;
        int length = iArr.length << 1;
        if (length < 0) {
            throw new IllegalStateException();
        }
        int[] iArr2 = new int[length];
        int length2 = iArr.length;
        int i10 = this.f24748a;
        int i11 = length2 - i10;
        System.arraycopy(iArr, i10, iArr2, 0, i11);
        System.arraycopy(this.f24751d, 0, iArr2, i11, i10);
        this.f24748a = 0;
        this.f24749b = this.f24750c - 1;
        this.f24751d = iArr2;
        this.f24752e = iArr2.length - 1;
    }

    public void a(int i10) {
        if (this.f24750c == this.f24751d.length) {
            c();
        }
        int i11 = (this.f24749b + 1) & this.f24752e;
        this.f24749b = i11;
        this.f24751d[i11] = i10;
        this.f24750c++;
    }

    public void b() {
        this.f24748a = 0;
        this.f24749b = -1;
        this.f24750c = 0;
    }

    public boolean d() {
        return this.f24750c == 0;
    }

    public int e() {
        int i10 = this.f24750c;
        if (i10 == 0) {
            throw new NoSuchElementException();
        }
        int[] iArr = this.f24751d;
        int i11 = this.f24748a;
        int i12 = iArr[i11];
        this.f24748a = (i11 + 1) & this.f24752e;
        this.f24750c = i10 - 1;
        return i12;
    }
}
