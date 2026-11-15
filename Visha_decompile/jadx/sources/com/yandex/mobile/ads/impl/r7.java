package com.yandex.mobile.ads.impl;

public final class r7 implements Runnable {
    private dh0 b;

    public final void a(dh0 dh0Var) {
        this.b = dh0Var;
    }

    @Override
    public final void run() {
        dh0 dh0Var = this.b;
        if (dh0Var != null) {
            dh0Var.a(w7.l());
        }
    }
}
