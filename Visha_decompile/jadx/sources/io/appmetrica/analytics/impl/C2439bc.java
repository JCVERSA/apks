package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;

public final class C2439bc implements LocationReceiverProviderFactory {
    public final C2464cc a = new C2464cc();

    @Override
    public final LocationReceiverProvider getPassiveLocationReceiverProvider() {
        return this.a;
    }
}
