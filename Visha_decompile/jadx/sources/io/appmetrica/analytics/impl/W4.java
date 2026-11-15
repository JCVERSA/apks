package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfiguration;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;

public final class W4 extends C2992xh {
    public W4(C2791pf c2791pf) {
        super(c2791pf, new CounterConfiguration());
        b().setReporterType(CounterConfigurationReporterType.COMMUTATION);
    }

    @Override
    public final boolean f() {
        return true;
    }
}
