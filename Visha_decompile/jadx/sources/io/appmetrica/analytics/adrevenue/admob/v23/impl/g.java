package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;

public abstract class g implements ModuleAdRevenueProcessor {

    @NonNull
    protected final d a;
    public final ClientContext b;

    public g(@NonNull d dVar, @NonNull ClientContext clientContext) {
        this.a = dVar;
        this.b = clientContext;
    }

    public final void a(@NonNull ModuleAdRevenue moduleAdRevenue) {
        this.b.getModuleAdRevenueContext().getAdRevenueReporter().reportAutoAdRevenue(moduleAdRevenue);
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue from AdMob was reported", new Object[0]);
    }

    @Override
    @NonNull
    public final String getDescription() {
        return "AdMob";
    }
}
