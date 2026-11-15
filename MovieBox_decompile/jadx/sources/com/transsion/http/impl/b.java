package com.transsion.http.impl;

class b implements Runnable {

    final byte[] f44593a;

    final int f44594b;

    final BitmapCallback f44595c;

    b(BitmapCallback bitmapCallback, byte[] bArr, int i10) {
        this.f44595c = bitmapCallback;
        this.f44593a = bArr;
        this.f44594b = i10;
    }

    @Override
    public void run() {
        this.f44595c.h(new a(this, this.f44595c.x(this.f44593a)));
    }
}
