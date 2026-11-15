package io.appmetrica.analytics.impl;

public final class V1 implements Sd {
    public final String a;

    public V1(String str) {
        this.a = str;
    }

    @Override
    public final void consume(Object obj) {
        ((G7) obj).a(this.a, true);
    }
}
