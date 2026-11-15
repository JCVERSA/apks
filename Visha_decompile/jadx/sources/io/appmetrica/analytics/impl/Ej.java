package io.appmetrica.analytics.impl;

import java.util.Map;

public final class Ej implements Xa {
    public final String a;
    public final Map b;

    public Ej(String str, Map map) {
        this.a = str;
        this.b = map;
    }

    @Override
    public final void a(Ya ya) {
        ya.reportEvent(this.a, this.b);
    }
}
