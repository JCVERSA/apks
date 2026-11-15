package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessorsHolder;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueReporter;

public final class V5 implements U5 {
    public final ModuleAdRevenueReporter a;
    public final C2930v5 b;

    public V5(ModuleAdRevenueReporter moduleAdRevenueReporter, C2930v5 c2930v5) {
        this.a = moduleAdRevenueReporter;
        this.b = c2930v5;
    }

    @Override
    public final C2930v5 getAdRevenueProcessorsHolder() {
        return this.b;
    }

    @Override
    public final ModuleAdRevenueReporter getAdRevenueReporter() {
        return this.a;
    }

    @Override
    public final ModuleAdRevenueProcessorsHolder getAdRevenueProcessorsHolder() {
        return this.b;
    }
}
