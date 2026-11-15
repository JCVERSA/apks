package io.appmetrica.analytics.impl;

public final class C2546fj implements Xa {
    public final String a;
    public final Throwable b;

    public C2546fj(String str, Throwable th) {
        this.a = str;
        this.b = th;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportError(this.a, this.b);
    }
}
