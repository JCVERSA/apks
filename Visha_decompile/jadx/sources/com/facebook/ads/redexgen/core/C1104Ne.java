package com.facebook.ads.redexgen.core;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdListener;

public class C1104Ne implements RewardedVideoAdListener {
    public final C1855gy A00;

    public C1104Ne(C1855gy c1855gy) {
        this.A00 = c1855gy;
    }

    @Override
    public final void onAdClicked(Ad ad) {
    }

    @Override
    public final void onAdLoaded(Ad ad) {
        this.A00.A00.A08.onAdLoaded(this.A00.A00.A09.A6c());
    }

    @Override
    public final void onError(Ad ad, AdError adError) {
        this.A00.A00.A03 = null;
        ((AbstractC1910hy) this.A00.A00.A04).A2A(false);
        this.A00.A00.A08.onAdLoaded(this.A00.A00.A09.A6c());
    }

    @Override
    public final void onLoggingImpression(Ad ad) {
    }

    @Override
    public final void onRewardedVideoClosed() {
        this.A00.A00.A08.onRewardedVideoClosed();
    }

    @Override
    public final void onRewardedVideoCompleted() {
        this.A00.A00.A08.onRewardedVideoCompleted();
    }
}
