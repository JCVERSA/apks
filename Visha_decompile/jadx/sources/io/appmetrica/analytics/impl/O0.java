package io.appmetrica.analytics.impl;

public final class O0 implements Runnable {
    public final C2702m1 a;

    public O0(C2702m1 c2702m1) {
        this.a = c2702m1;
    }

    @Override
    public final void run() {
        C2702m1.a(this.a).sendEventsBuffer();
    }
}
