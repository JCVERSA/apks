package com.transsion.http.impl;

public class c implements Runnable {
    final int a;
    final Throwable b;
    final BitmapCallback c;

    public c(BitmapCallback bitmapCallback, int i, Throwable th) {
        this.c = bitmapCallback;
        this.a = i;
        this.b = th;
    }

    @Override
    public void run() {
        this.c.E(this.a, null, this.b);
    }
}
