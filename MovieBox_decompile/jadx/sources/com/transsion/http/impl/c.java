package com.transsion.http.impl;

class c implements Runnable {

    final int f44596a;

    final Throwable f44597b;

    final BitmapCallback f44598c;

    c(BitmapCallback bitmapCallback, int i10, Throwable th2) {
        this.f44598c = bitmapCallback;
        this.f44596a = i10;
        this.f44597b = th2;
    }

    @Override
    public void run() {
        this.f44598c.y(this.f44596a, null, this.f44597b);
    }
}
