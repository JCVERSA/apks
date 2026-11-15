package io.appmetrica.analytics.impl;

public final class Dj implements Xa {
    public final String a;
    public final String b;

    public Dj(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportEvent(this.a, this.b);
    }
}
