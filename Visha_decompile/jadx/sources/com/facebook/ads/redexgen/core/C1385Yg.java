package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;

public class C1385Yg extends AbstractRunnableC1322Vt {
    public final C1609cu A00;

    public C1385Yg(C1609cu c1609cu) {
        this.A00 = c1609cu;
    }

    @Override
    public final void A07() {
        DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        if (dynamicLoader != null) {
            dynamicLoader.createBidderTokenProviderApi().getBidderToken(this.A00);
        }
    }
}
