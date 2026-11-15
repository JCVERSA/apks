package com.yandex.mobile.ads.impl;

public class si2 extends Exception {
    public final xc1 b;

    public si2() {
        this.b = null;
    }

    public si2(xc1 xc1Var) {
        this.b = xc1Var;
    }

    public si2(Exception exc) {
        super("Failed to parse response", exc);
        this.b = null;
    }

    public si2(String str) {
        super(str);
        this.b = null;
    }

    public si2(Throwable th) {
        super(th);
        this.b = null;
    }
}
