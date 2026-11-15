package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;

public final class C1299Uv implements NativeAdBase.NativeAdLoadConfigBuilder, NativeAdBase.NativeLoadAdConfig {
    public NativeAdBase.MediaCacheFlag A02;
    public String A03;
    public boolean A04;
    public final NativeAdBase A05;
    public final C1178Qc A06;
    public int A01 = -1;
    public int A00 = -1;

    public C1299Uv(C1178Qc c1178Qc, NativeAdBase nativeAdBase) {
        this.A06 = c1178Qc;
        this.A05 = nativeAdBase;
    }

    public final void A00() {
        if (this.A02 == null) {
            this.A02 = NativeAdBase.MediaCacheFlag.ALL;
        }
        this.A06.A1Y(EnumC1289Ul.A00(this.A02), this.A03, new SL(this.A04, this.A01, this.A00));
    }

    @Override
    public final NativeAdBase.NativeLoadAdConfig build() {
        return this;
    }

    @Override
    public final NativeAdBase.NativeAdLoadConfigBuilder withAdListener(NativeAdListener nativeAdListener) {
        this.A06.A1U(this.A05, nativeAdListener);
        return this;
    }

    @Override
    public final NativeAdBase.NativeAdLoadConfigBuilder withBid(String str) {
        this.A03 = str;
        return this;
    }

    @Override
    public final NativeAdBase.NativeAdLoadConfigBuilder withMediaCacheFlag(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A02 = mediaCacheFlag;
        return this;
    }

    @Override
    public final NativeAdBase.NativeAdLoadConfigBuilder withPreloadedIconView(int i, int i2) {
        this.A04 = true;
        this.A01 = i;
        this.A00 = i2;
        return this;
    }
}
