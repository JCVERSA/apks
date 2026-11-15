package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;

public final class W5 extends BaseRequestConfig.DataSource {

    @NonNull
    public final Hl a;

    @NonNull
    public final SdkEnvironmentProvider b;

    public W5(@NonNull Hl hl, @NonNull SdkEnvironmentProvider sdkEnvironmentProvider, @NonNull PlatformIdentifiers platformIdentifiers, Object obj) {
        super(new SdkIdentifiers(hl.e(), hl.a(), hl.b()), sdkEnvironmentProvider, platformIdentifiers, obj);
        this.a = hl;
        this.b = sdkEnvironmentProvider;
    }
}
