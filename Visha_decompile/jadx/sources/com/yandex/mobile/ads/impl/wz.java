package com.yandex.mobile.ads.impl;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Arrays;

public final class wz implements a80 {
    private final qv b;
    private final long c;
    private long d;
    private int f;
    private int g;
    private byte[] e = new byte[65536];
    private final byte[] a = new byte[4096];

    static {
        u60.a("goog.exo.extractor");
    }

    public wz(tv tvVar, long j, long j2) {
        this.b = tvVar;
        this.d = j;
        this.c = j2;
    }

    public final boolean a(boolean z, int i) throws IOException {
        int i2 = this.f + i;
        byte[] bArr = this.e;
        if (i2 > bArr.length) {
            int i3 = f92.a;
            this.e = Arrays.copyOf(this.e, Math.max(65536 + i2, Math.min(bArr.length * 2, i2 + 524288)));
        }
        int iA = this.g - this.f;
        while (iA < i) {
            iA = a(this.e, this.f, i, iA, z);
            if (iA == -1) {
                return false;
            }
            this.g = this.f + iA;
        }
        this.f += i;
        return true;
    }

    @Override
    public final void b(int i) throws IOException {
        a(false, i);
    }

    public final int c(byte[] bArr, int i, int i2) throws IOException {
        int iMin;
        int i3 = this.f + i2;
        byte[] bArr2 = this.e;
        if (i3 > bArr2.length) {
            int i4 = f92.a;
            this.e = Arrays.copyOf(this.e, Math.max(65536 + i3, Math.min(bArr2.length * 2, i3 + 524288)));
        }
        int i5 = this.g;
        int i6 = this.f;
        int i7 = i5 - i6;
        if (i7 == 0) {
            iMin = a(this.e, i6, i2, 0, true);
            if (iMin == -1) {
                return -1;
            }
            this.g += iMin;
        } else {
            iMin = Math.min(i2, i7);
        }
        System.arraycopy(this.e, this.f, bArr, i, iMin);
        this.f += iMin;
        return iMin;
    }

    @Override
    public final long d() {
        return this.d + ((long) this.f);
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.g;
        int iA = 0;
        if (i3 != 0) {
            int iMin = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, iMin);
            d(iMin);
            iA = iMin;
        }
        if (iA == 0) {
            iA = a(bArr, i, i2, 0, true);
        }
        if (iA != -1) {
            this.d += (long) iA;
        }
        return iA;
    }

    private void d(int i) {
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr = this.e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.e = bArr2;
    }

    @Override
    public final long b() {
        return this.c;
    }

    @Override
    public final boolean b(byte[] bArr, int i, int i2, boolean z) throws IOException {
        if (!a(z, i2)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override
    public final void b(byte[] bArr, int i, int i2) throws IOException {
        a(bArr, i, i2, false);
    }

    @Override
    public final long a() {
        return this.d;
    }

    @Override
    public final void a(byte[] bArr, int i, int i2) throws IOException {
        b(bArr, i, i2, false);
    }

    @Override
    public final boolean a(byte[] bArr, int i, int i2, boolean z) throws IOException {
        int iA;
        int i3 = this.g;
        if (i3 == 0) {
            iA = 0;
        } else {
            int iMin = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, iMin);
            d(iMin);
            iA = iMin;
        }
        while (iA < i2 && iA != -1) {
            iA = a(bArr, i, i2, iA, z);
        }
        if (iA != -1) {
            this.d += (long) iA;
        }
        return iA != -1;
    }

    @Override
    public final void c() {
        this.f = 0;
    }

    public final int c(int i) throws IOException {
        int iMin = Math.min(this.g, i);
        d(iMin);
        if (iMin == 0) {
            byte[] bArr = this.a;
            iMin = a(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        if (iMin != -1) {
            this.d += (long) iMin;
        }
        return iMin;
    }

    @Override
    public final void a(int i) throws IOException {
        int iMin = Math.min(this.g, i);
        d(iMin);
        int iA = iMin;
        while (iA < i && iA != -1) {
            iA = a(this.a, -iA, Math.min(i, this.a.length + iA), iA, false);
        }
        if (iA != -1) {
            this.d += (long) iA;
        }
    }

    private int a(byte[] bArr, int i, int i2, int i3, boolean z) throws IOException {
        if (!Thread.interrupted()) {
            int i4 = this.b.read(bArr, i + i3, i2 - i3);
            if (i4 != -1) {
                return i3 + i4;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedIOException();
    }
}
