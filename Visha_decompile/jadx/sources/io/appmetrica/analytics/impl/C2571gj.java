package io.appmetrica.analytics.impl;

public final class C2571gj implements Xa {
    public final String a;
    public final String b;
    public final Throwable c;

    public C2571gj(String str, String str2, Throwable th) {
        this.a = str;
        this.b = str2;
        this.c = th;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportError(this.a, this.b, this.c);
    }
}
