package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;

public final class C3036zb implements LastKnownLocationExtractorProviderFactory {
    public final Ab a = new Ab();

    @Override
    public final LastKnownLocationExtractorProvider getGplLastKnownLocationExtractorProvider() {
        return this.a;
    }

    @Override
    public final LastKnownLocationExtractorProvider getGpsLastKnownLocationExtractorProvider() {
        return this.a;
    }

    @Override
    public final LastKnownLocationExtractorProvider getNetworkLastKnownLocationExtractorProvider() {
        return this.a;
    }

    @Override
    public final LastKnownLocationExtractorProvider getPassiveLastKnownLocationExtractorProvider() {
        return this.a;
    }
}
