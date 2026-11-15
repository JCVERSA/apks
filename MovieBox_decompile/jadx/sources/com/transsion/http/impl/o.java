package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

class o implements Runnable {

    final byte[] f44628a;

    final int f44629b;

    final Throwable f44630c;

    final StringCallback f44631d;

    o(StringCallback stringCallback, byte[] bArr, int i10, Throwable th2) {
        this.f44631d = stringCallback;
        this.f44628a = bArr;
        this.f44629b = i10;
        this.f44630c = th2;
    }

    @Override
    public void run() {
        try {
            this.f44631d.h(new m(this, StringCallback.w(this.f44628a, "UTF-8")));
        } catch (UnsupportedEncodingException e10) {
            this.f44631d.h(new n(this, e10));
        }
    }
}
