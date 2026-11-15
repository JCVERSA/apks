package com.facebook.ads.redexgen.core;

import com.facebook.ads.RewardedVideoAd;

public final class C1203Rb implements RewardedVideoAd.RewardedVideoAdShowConfigBuilder, RewardedVideoAd.RewardedVideoShowAdConfig {
    public int A00 = -1;
    public long A01;

    public final int A00() {
        return this.A00;
    }

    public final long A01() {
        return this.A01;
    }

    public final C1203Rb A02(long j) {
        this.A01 = j;
        return this;
    }

    @Override
    public final RewardedVideoAd.RewardedVideoShowAdConfig build() {
        return this;
    }

    @Override
    public final RewardedVideoAd.RewardedVideoAdShowConfigBuilder withAppOrientation(int i) {
        this.A00 = i;
        return this;
    }
}
