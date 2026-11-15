package com.facebook.ads.redexgen.core;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedInterstitialAdExtendedListener;
import com.facebook.ads.RewardedInterstitialAdListener;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.facebook.ads.S2SRewardedInterstitialAdListener;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.facebook.ads.S2SRewardedVideoAdListener;

public class RW implements RewardedVideoAdExtendedListener, S2SRewardedVideoAdListener, S2SRewardedVideoAdExtendedListener {
    public final RewardedInterstitialAdListener A00;

    public RW(RewardedInterstitialAdListener rewardedInterstitialAdListener) {
        this.A00 = rewardedInterstitialAdListener;
    }

    @Override
    public final void onAdClicked(Ad ad) {
        this.A00.onAdClicked(ad);
    }

    @Override
    public final void onAdLoaded(Ad ad) {
        this.A00.onAdLoaded(ad);
    }

    @Override
    public final void onError(Ad ad, AdError adError) {
        this.A00.onError(ad, adError);
    }

    @Override
    public final void onLoggingImpression(Ad ad) {
        this.A00.onLoggingImpression(ad);
    }

    @Override
    public final void onRewardServerFailed() {
        if (this.A00 instanceof S2SRewardedInterstitialAdListener) {
            ((S2SRewardedInterstitialAdListener) this.A00).onRewardServerFailed();
        }
    }

    @Override
    public final void onRewardServerSuccess() {
        if (this.A00 instanceof S2SRewardedInterstitialAdListener) {
            ((S2SRewardedInterstitialAdListener) this.A00).onRewardServerSuccess();
        }
    }

    @Override
    public final void onRewardedVideoActivityDestroyed() {
        if (this.A00 instanceof RewardedInterstitialAdExtendedListener) {
            ((RewardedInterstitialAdExtendedListener) this.A00).onRewardedInterstitialActivityDestroyed();
        }
    }

    @Override
    public final void onRewardedVideoClosed() {
        this.A00.onRewardedInterstitialClosed();
    }

    @Override
    public final void onRewardedVideoCompleted() {
        this.A00.onRewardedInterstitialCompleted();
    }
}
