package io.appmetrica.analytics.impl;

public final class C3044zj implements Xa {
    public final String a;
    public final String b;

    public C3044zj(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override
    public final void a(Ya ya) {
        ya.putAppEnvironmentValue(this.a, this.b);
    }
}
