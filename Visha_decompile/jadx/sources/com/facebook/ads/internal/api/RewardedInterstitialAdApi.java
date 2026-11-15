package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardedInterstitialAd;
import com.facebook.proguard.annotations.DoNotStripAny;

@Keep
@DoNotStripAny
@UiThread
public interface RewardedInterstitialAdApi extends FullScreenAd {
    @Override
    RewardedInterstitialAd.RewardedInterstitialAdLoadConfigBuilder buildLoadAdConfig();

    @Override
    RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder buildShowAdConfig();

    @Override
    void destroy();

    @Override
    String getPlacementId();

    int getVideoDuration();

    boolean isAdLoaded();

    @Override
    void loadAd();

    void loadAd(RewardedInterstitialAd.RewardedInterstitialLoadAdConfig rewardedInterstitialLoadAdConfig);

    @Override
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override
    boolean show();

    boolean show(RewardedInterstitialAd.RewardedInterstitialShowAdConfig rewardedInterstitialShowAdConfig);
}
