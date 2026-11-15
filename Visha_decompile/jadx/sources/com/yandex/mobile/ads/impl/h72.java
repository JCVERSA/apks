package com.yandex.mobile.ads.impl;

import java.nio.ByteBuffer;

final class h72 extends ik {
    private int i;
    private int j;
    private boolean k;
    private int l;
    private byte[] m = f92.f;
    private int n;
    private long o;

    @Override
    public final boolean a() {
        return super.a() && this.n == 0;
    }

    @Override
    public final uh.a b(uh.a aVar) throws uh.b {
        if (aVar.c != 2) {
            throw new uh.b(aVar);
        }
        this.k = true;
        return (this.i == 0 && this.j == 0) ? uh.a.e : aVar;
    }

    @Override
    public final ByteBuffer c() {
        int i;
        if (super.a() && (i = this.n) > 0) {
            a(i).put(this.m, 0, this.n).flip();
            this.n = 0;
        }
        return super.c();
    }

    @Override
    public final void f() {
        if (this.k) {
            this.k = false;
            int i = this.j;
            int i2 = this.b.d;
            this.m = new byte[i * i2];
            this.l = this.i * i2;
        }
        this.n = 0;
    }

    @Override
    public final void g() {
        if (this.k) {
            int i = this.n;
            if (i > 0) {
                this.o += (long) (i / this.b.d);
            }
            this.n = 0;
        }
    }

    @Override
    public final void h() {
        this.m = f92.f;
    }

    public final long i() {
        return this.o;
    }

    public final void j() {
        this.o = 0L;
    }

    @Override
    public final void a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        if (i == 0) {
            return;
        }
        int iMin = Math.min(i, this.l);
        this.o += (long) (iMin / this.b.d);
        this.l -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.l > 0) {
            return;
        }
        int i2 = i - iMin;
        int length = (this.n + i2) - this.m.length;
        ByteBuffer byteBufferA = a(length);
        int i3 = this.n;
        int i4 = f92.a;
        int iMax = Math.max(0, Math.min(length, i3));
        byteBufferA.put(this.m, 0, iMax);
        int iMax2 = Math.max(0, Math.min(length - iMax, i2));
        byteBuffer.limit(byteBuffer.position() + iMax2);
        byteBufferA.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i5 = i2 - iMax2;
        int i6 = this.n - iMax;
        this.n = i6;
        byte[] bArr = this.m;
        System.arraycopy(bArr, iMax, bArr, 0, i6);
        byteBuffer.get(this.m, this.n, i5);
        this.n += i5;
        byteBufferA.flip();
    }

    public final void a(int i, int i2) {
        this.i = i;
        this.j = i2;
    }
}
