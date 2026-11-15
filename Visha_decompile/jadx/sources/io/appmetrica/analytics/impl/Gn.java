package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceConfiguration;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;

public final class Gn implements Ml {
    public final UtilityServiceProvider a;

    public Gn(UtilityServiceProvider utilityServiceProvider) {
        this.a = utilityServiceProvider;
    }

    @Override
    public final void a(Hl hl) {
        this.a.updateConfiguration(new UtilityServiceConfiguration(hl.v, hl.u));
    }
}
