package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;

public final class C1284Ug implements AdView.AdViewLoadConfigBuilder, AdView.AdViewLoadConfig {
    public String A00;
    public final C1201Qz A01;

    public C1284Ug(C1201Qz c1201Qz) {
        this.A01 = c1201Qz;
    }

    public final String A00() {
        return this.A00;
    }

    @Override
    public final AdView.AdViewLoadConfig build() {
        return this;
    }

    @Override
    public final AdView.AdViewLoadConfigBuilder withAdListener(AdListener adListener) {
        this.A01.A0C(adListener);
        return this;
    }

    @Override
    public final AdView.AdViewLoadConfigBuilder withBid(String str) {
        this.A00 = str;
        return this;
    }
}
