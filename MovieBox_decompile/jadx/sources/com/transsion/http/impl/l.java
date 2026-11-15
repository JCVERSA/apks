package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

class l implements Runnable {

    final byte[] f44621a;

    final int f44622b;

    final StringCallback f44623c;

    l(StringCallback stringCallback, byte[] bArr, int i10) {
        this.f44623c = stringCallback;
        this.f44621a = bArr;
        this.f44622b = i10;
    }

    @Override
    public void run() {
        try {
            this.f44623c.h(new j(this, StringCallback.w(this.f44621a, "UTF-8")));
        } catch (UnsupportedEncodingException e10) {
            this.f44623c.h(new k(this, e10));
        }
    }
}
