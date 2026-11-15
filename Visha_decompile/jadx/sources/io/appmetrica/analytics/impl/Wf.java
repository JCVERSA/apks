package io.appmetrica.analytics.impl;

public final class Wf implements Runnable {
    public final InterfaceC2593hg a;
    public final Throwable b;

    public Wf(InterfaceC2593hg interfaceC2593hg, Throwable th) {
        this.a = interfaceC2593hg;
        this.b = th;
    }

    @Override
    public final void run() {
        this.a.a(this.b);
    }
}
