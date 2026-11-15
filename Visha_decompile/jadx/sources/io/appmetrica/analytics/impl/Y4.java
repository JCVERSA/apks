package io.appmetrica.analytics.impl;

import java.util.Arrays;

public final class Y4 implements InterfaceC2509e7 {
    public final String a;
    public final String b;

    public Y4(C2532f5 c2532f5) {
        this.a = String.format("component_%s.db", Arrays.copyOf(new Object[]{c2532f5.d() ? "main" : c2532f5.b()}, 1));
        this.b = "db_metrica_" + c2532f5;
    }

    @Override
    public final String a() {
        return this.b;
    }

    @Override
    public final String b() {
        return this.a;
    }
}
