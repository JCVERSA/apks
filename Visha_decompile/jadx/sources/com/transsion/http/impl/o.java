package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

public class o implements Runnable {
    final byte[] a;
    final int b;
    final Throwable c;
    final StringCallback d;

    public o(StringCallback stringCallback, byte[] bArr, int i, Throwable th) {
        this.d = stringCallback;
        this.a = bArr;
        this.b = i;
        this.c = th;
    }

    @Override
    public void run() {
        try {
            this.d.j(new m(this, StringCallback.C(this.a, "UTF-8")));
        } catch (UnsupportedEncodingException e) {
            this.d.j(new n(this, e));
        }
    }
}
