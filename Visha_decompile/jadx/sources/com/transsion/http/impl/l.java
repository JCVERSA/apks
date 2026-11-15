package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

public class l implements Runnable {
    final byte[] a;
    final int b;
    final StringCallback c;

    public l(StringCallback stringCallback, byte[] bArr, int i) {
        this.c = stringCallback;
        this.a = bArr;
        this.b = i;
    }

    @Override
    public void run() {
        try {
            this.c.j(new j(this, StringCallback.C(this.a, "UTF-8")));
        } catch (UnsupportedEncodingException e) {
            this.c.j(new k(this, e));
        }
    }
}
