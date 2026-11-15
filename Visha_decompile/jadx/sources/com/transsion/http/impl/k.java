package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

public class k implements Runnable {
    final UnsupportedEncodingException a;
    final l b;

    public k(l lVar, UnsupportedEncodingException unsupportedEncodingException) {
        this.b = lVar;
        this.a = unsupportedEncodingException;
    }

    @Override
    public void run() {
        l lVar = this.b;
        lVar.c.D(lVar.b, null, this.a.getCause());
    }
}
