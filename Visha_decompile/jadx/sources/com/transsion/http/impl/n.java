package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

public class n implements Runnable {
    final UnsupportedEncodingException a;
    final o b;

    public n(o oVar, UnsupportedEncodingException unsupportedEncodingException) {
        this.b = oVar;
        this.a = unsupportedEncodingException;
    }

    @Override
    public void run() {
        o oVar = this.b;
        oVar.d.D(oVar.b, null, this.a.getCause());
    }
}
