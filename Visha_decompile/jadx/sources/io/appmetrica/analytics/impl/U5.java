package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueReporter;

public interface U5 extends ModuleAdRevenueContext {
    @Override
    C2930v5 getAdRevenueProcessorsHolder();

    @Override
    ModuleAdRevenueReporter getAdRevenueReporter();
}
