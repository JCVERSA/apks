package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

class k implements Runnable {

    final UnsupportedEncodingException f44619a;

    final l f44620b;

    k(l lVar, UnsupportedEncodingException unsupportedEncodingException) {
        this.f44620b = lVar;
        this.f44619a = unsupportedEncodingException;
    }

    @Override
    public void run() {
        l lVar = this.f44620b;
        lVar.f44623c.x(lVar.f44622b, null, this.f44619a.getCause());
    }
}
