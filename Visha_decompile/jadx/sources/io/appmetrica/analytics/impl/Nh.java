package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;

public final class Nh implements Runnable {
    public final ModuleEvent a;
    public final Yh b;

    public Nh(Yh yh, ModuleEvent moduleEvent) {
        this.b = yh;
        this.a = moduleEvent;
    }

    @Override
    public final void run() {
        Yh yh = this.b;
        Yh.a(yh.a, yh.d, yh.e).reportEvent(this.a);
    }
}
