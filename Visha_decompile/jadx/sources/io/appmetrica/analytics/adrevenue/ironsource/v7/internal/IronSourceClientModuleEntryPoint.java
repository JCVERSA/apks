package io.appmetrica.analytics.adrevenue.ironsource.v7.internal;

import androidx.annotation.NonNull;
import com.ironsource.mediationsdk.IronSource;
import io.appmetrica.analytics.adrevenue.ironsource.v7.impl.c;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;

public class IronSourceClientModuleEntryPoint extends ModuleClientEntryPoint<Object> {
    private ClientContext a = null;

    @Override
    @NonNull
    public String getIdentifier() {
        return "ad-revenue-ironsource-v7";
    }

    @Override
    public void initClientSide(@NonNull ClientContext clientContext) {
        this.a = clientContext;
    }

    @Override
    public void onActivated() {
        ClientContext clientContext;
        if (!ReflectionUtils.detectClassExists("com.ironsource.mediationsdk.IronSource") || (clientContext = this.a) == null) {
            return;
        }
        IronSource.addImpressionDataListener(new c(clientContext));
    }
}
