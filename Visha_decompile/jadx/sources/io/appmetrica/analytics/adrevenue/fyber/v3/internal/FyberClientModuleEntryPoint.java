package io.appmetrica.analytics.adrevenue.fyber.v3.internal;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.adrevenue.fyber.v3.impl.c;
import io.appmetrica.analytics.adrevenue.fyber.v3.impl.d;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;

public class FyberClientModuleEntryPoint extends ModuleClientEntryPoint<Object> {
    @Override
    @NonNull
    public String getIdentifier() {
        return "ad-revenue-fyber-v3";
    }

    @Override
    public void initClientSide(@NonNull ClientContext clientContext) {
        if (ReflectionUtils.detectClassExists("com.fyber.fairbid.ads.Interstitial")) {
            clientContext.getModuleAdRevenueContext().getAdRevenueProcessorsHolder().register(new d(new c(), clientContext));
        }
    }
}
