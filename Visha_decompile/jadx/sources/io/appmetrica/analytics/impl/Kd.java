package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.io.IExecutionPolicy;
import io.appmetrica.analytics.coreapi.internal.io.SslSocketFactoryProvider;
import io.appmetrica.analytics.modulesapi.internal.network.SimpleNetworkApi;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext;

public final class Kd implements ServiceNetworkContext {
    public final E9 a;
    public final String b = new C3048zn().a();
    public final Uk c = new Uk();

    public Kd(Context context) {
        this.a = new E9(context);
    }

    @Override
    public final IExecutionPolicy getExecutionPolicy() {
        return this.a;
    }

    @Override
    public final SimpleNetworkApi getNetworkApi() {
        return this.c;
    }

    @Override
    public final SslSocketFactoryProvider getSslSocketFactoryProvider() {
        return C2910ua.E.y();
    }

    @Override
    public final String getUserAgent() {
        return this.b;
    }
}
