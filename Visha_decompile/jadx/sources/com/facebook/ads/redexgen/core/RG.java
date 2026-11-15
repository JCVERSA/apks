package com.facebook.ads.redexgen.core;

import com.facebook.ads.InterstitialAd;

public final class RG implements InterstitialAd.InterstitialAdShowConfigBuilder, InterstitialAd.InterstitialShowAdConfig {
    @Override
    public final InterstitialAd.InterstitialShowAdConfig build() {
        return this;
    }
}
