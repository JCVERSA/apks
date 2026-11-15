package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.infer.annotation.Nullsafe;

@Keep
@Nullsafe(Nullsafe.Mode.LOCAL)
public class AbstractAdListener implements InterstitialAdExtendedListener, RewardedVideoAdExtendedListener, RewardedInterstitialAdExtendedListener {
    @Override
    public void onAdClicked(Ad ad) {
    }

    @Override
    public void onAdLoaded(Ad ad) {
    }

    @Override
    public void onError(Ad ad, AdError adError) {
    }

    @Override
    public void onInterstitialActivityDestroyed() {
    }

    @Override
    public void onInterstitialDismissed(Ad ad) {
    }

    @Override
    public void onInterstitialDisplayed(Ad ad) {
    }

    @Override
    public void onLoggingImpression(Ad ad) {
    }

    @Override
    public void onRewardedAdCompleted() {
    }

    @Override
    public void onRewardedAdServerFailed() {
    }

    @Override
    public void onRewardedAdServerSucceeded() {
    }

    @Override
    public void onRewardedInterstitialActivityDestroyed() {
    }

    @Override
    public void onRewardedInterstitialClosed() {
    }

    @Override
    public void onRewardedInterstitialCompleted() {
    }

    @Override
    public void onRewardedVideoActivityDestroyed() {
    }

    @Override
    public void onRewardedVideoClosed() {
    }

    @Override
    public void onRewardedVideoCompleted() {
    }
}
