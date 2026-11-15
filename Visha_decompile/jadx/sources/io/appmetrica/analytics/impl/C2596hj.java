package io.appmetrica.analytics.impl;

public final class C2596hj implements Xa {
    public final Throwable a;

    public C2596hj(Throwable th) {
        this.a = th;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportUnhandledException(this.a);
    }
}
