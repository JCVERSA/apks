package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.network.NetworkClientWithCacheControl;
import io.appmetrica.analytics.modulesapi.internal.network.SimpleNetworkApi;
import io.appmetrica.analytics.networktasks.internal.CacheControlHttpsConnectionPerformer;

public final class Uk implements SimpleNetworkApi {
    public final CacheControlHttpsConnectionPerformer a = new CacheControlHttpsConnectionPerformer(((C2473cl) C2910ua.j().y()).getSslSocketFactory());

    @Override
    public final void performRequestWithCacheControl(String str, NetworkClientWithCacheControl networkClientWithCacheControl) {
        this.a.performConnection(str, new C3003y3(networkClientWithCacheControl));
    }
}
