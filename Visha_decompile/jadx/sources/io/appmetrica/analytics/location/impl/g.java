package io.appmetrica.analytics.location.impl;

import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;

public final class g implements LastKnownLocationExtractorProviderFactory {
    public final LastKnownLocationExtractorProvider a;
    public final c b = new c("location-module-gpl");
    public final v c = new v("network", new f(), "location-module-network");
    public final v d = new v(DownloadFacadeEnum.USER_GPS, new e(), "location-module-gps");

    public g(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.a = lastKnownLocationExtractorProvider;
    }

    @Override
    public final LastKnownLocationExtractorProvider getGplLastKnownLocationExtractorProvider() {
        return this.b;
    }

    @Override
    public final LastKnownLocationExtractorProvider getGpsLastKnownLocationExtractorProvider() {
        return this.d;
    }

    @Override
    public final LastKnownLocationExtractorProvider getNetworkLastKnownLocationExtractorProvider() {
        return this.c;
    }

    @Override
    public final LastKnownLocationExtractorProvider getPassiveLastKnownLocationExtractorProvider() {
        return this.a;
    }
}
