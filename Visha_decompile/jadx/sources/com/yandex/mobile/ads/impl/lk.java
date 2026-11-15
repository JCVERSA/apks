package com.yandex.mobile.ads.impl;

import defpackage.y45;

public class lk implements xg0 {
    private final yf1 a;

    public lk(yf1 yf1Var) {
        y45.j(yf1Var, "parentHtmlWebView");
        this.a = yf1Var;
        yf1Var.setId(2);
    }

    @Override
    public void a(String str) {
        y45.j(str, "htmlResponse");
        this.a.b(str);
    }

    @Override
    public void invalidate() {
        this.a.d();
    }

    public void a(dh0 dh0Var) {
        y45.j(dh0Var, "htmlWebViewListener");
        this.a.setHtmlWebViewListener(dh0Var);
    }
}
