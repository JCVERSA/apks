package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;

public final class C2755o4 implements ModuleServiceConfig {
    public final SdkIdentifiers a;
    public final Object b;

    public C2755o4(SdkIdentifiers sdkIdentifiers, Object obj) {
        this.a = sdkIdentifiers;
        this.b = obj;
    }

    @Override
    public final Object getFeaturesConfig() {
        return this.b;
    }

    @Override
    public final SdkIdentifiers getIdentifiers() {
        return this.a;
    }
}
