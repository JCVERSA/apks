package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class wj2 implements Runnable {
    private final int b;
    private final String c;
    private final eh0 d;

    public wj2(int i, String str, eh0 eh0Var) {
        y45.j(eh0Var, "htmlWebViewRenderer");
        this.b = i;
        this.c = str;
        this.d = eh0Var;
    }

    @Override
    public final void run() {
        this.d.a(this.b, this.c);
    }
}
