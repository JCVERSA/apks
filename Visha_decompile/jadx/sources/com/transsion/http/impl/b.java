package com.transsion.http.impl;

public class b implements Runnable {
    final byte[] a;
    final int b;
    final BitmapCallback c;

    public b(BitmapCallback bitmapCallback, byte[] bArr, int i) {
        this.c = bitmapCallback;
        this.a = bArr;
        this.b = i;
    }

    @Override
    public void run() {
        this.c.j(new a(this, this.c.D(this.a)));
    }
}
