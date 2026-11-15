package io.appmetrica.analytics.impl;

public final class Cj implements Xa {
    public final String a;

    public Cj(String str) {
        this.a = str;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportEvent(this.a);
    }
}
