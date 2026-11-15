package com.transsion.http.impl;

import java.io.UnsupportedEncodingException;

class n implements Runnable {

    final UnsupportedEncodingException f44626a;

    final o f44627b;

    n(o oVar, UnsupportedEncodingException unsupportedEncodingException) {
        this.f44627b = oVar;
        this.f44626a = unsupportedEncodingException;
    }

    @Override
    public void run() {
        o oVar = this.f44627b;
        oVar.f44631d.x(oVar.f44629b, null, this.f44626a.getCause());
    }
}
