package com.yandex.mobile.ads.impl;

final class xm implements Runnable {
    final up1 b;
    final ym c;

    public xm(ym ymVar, up1 up1Var) {
        this.c = ymVar;
        this.b = up1Var;
    }

    @Override
    public final void run() {
        try {
            this.c.c.put(this.b);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
