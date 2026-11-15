package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.api.AdSizeApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;

public class TH implements AdSizeApi {
    public final DynamicLoaderImpl A00;
    public final V4 A01;

    public TH(DynamicLoaderImpl dynamicLoaderImpl, V4 v4) {
        this.A00 = dynamicLoaderImpl;
        this.A01 = v4;
    }

    @Override
    public final int getHeight() {
        return this.A01.A03();
    }

    @Override
    public final int getWidth() {
        return this.A01.A04();
    }
}
