package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.network.NetworkClientWithCacheControl;
import io.appmetrica.analytics.networktasks.internal.CacheControlHttpsConnectionPerformer;

public final class C3003y3 implements CacheControlHttpsConnectionPerformer.Client {
    public final NetworkClientWithCacheControl a;

    public C3003y3(NetworkClientWithCacheControl networkClientWithCacheControl) {
        this.a = networkClientWithCacheControl;
    }

    @Override
    public final String getOldETag() {
        return this.a.getETag();
    }

    @Override
    public final void onError() {
        this.a.onError();
    }

    @Override
    public final void onNotModified() {
        this.a.onNotModified();
    }

    @Override
    public final void onResponse(String str, byte[] bArr) {
        this.a.onResponse(str, bArr);
    }
}
