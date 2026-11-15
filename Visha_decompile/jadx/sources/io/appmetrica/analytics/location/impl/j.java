package io.appmetrica.analytics.location.impl;

import io.appmetrica.analytics.locationapi.internal.CacheArguments;

public final class j implements Runnable {
    public final i a;
    public final k b;

    public j(k kVar, i iVar) {
        this.b = kVar;
        this.a = iVar;
    }

    @Override
    public final void run() {
        p pVar = this.b.c;
        i iVar = this.a;
        pVar.a = iVar;
        CacheArguments cacheArguments = iVar.b;
        pVar.b.updateCacheControl(cacheArguments.getRefreshPeriod(), cacheArguments.getOutdatedTimeInterval());
    }
}
