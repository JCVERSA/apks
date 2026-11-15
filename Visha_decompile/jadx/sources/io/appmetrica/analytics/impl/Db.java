package io.appmetrica.analytics.impl;

import defpackage.yi5;
import io.appmetrica.analytics.networktasks.internal.ConfigProvider;

public final class Db implements ConfigProvider {
    public final C2706m5 a;
    public final yi5 b = kotlin.b.a(new Cb(this));

    public Db(C2706m5 c2706m5) {
        this.a = c2706m5;
    }

    @Override
    public final C2469ch getConfig() {
        return (C2469ch) this.b.getValue();
    }
}
