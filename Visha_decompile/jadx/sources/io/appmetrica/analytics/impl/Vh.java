package io.appmetrica.analytics.impl;

public final class Vh implements Runnable {
    public final Yh a;

    public Vh(Yh yh) {
        this.a = yh;
    }

    @Override
    public final void run() {
        Yh yh = this.a;
        Yh.a(yh.a, yh.d, yh.e).clearAppEnvironment();
    }
}
