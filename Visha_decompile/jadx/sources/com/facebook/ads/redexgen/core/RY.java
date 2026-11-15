package com.facebook.ads.redexgen.core;

import com.facebook.ads.RewardedInterstitialAd;

public final class RY implements RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder, RewardedInterstitialAd.RewardedInterstitialShowAdConfig {
    public final C1203Rb A00;

    public RY(C1203Rb c1203Rb) {
        this.A00 = c1203Rb;
    }

    public final C1203Rb A00() {
        return this.A00;
    }

    @Override
    public final RewardedInterstitialAd.RewardedInterstitialShowAdConfig build() {
        return this;
    }

    @Override
    public final RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder withAppOrientation(int i) {
        this.A00.withAppOrientation(i);
        return this;
    }
}
