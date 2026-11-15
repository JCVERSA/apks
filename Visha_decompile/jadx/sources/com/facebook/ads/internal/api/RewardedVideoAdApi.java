package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.proguard.annotations.DoNotStripAny;

@Keep
@DoNotStripAny
@UiThread
public interface RewardedVideoAdApi extends FullScreenAd {
    @Override
    RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig();

    @Override
    RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig();

    @Override
    void destroy();

    @Override
    String getPlacementId();

    int getVideoDuration();

    boolean isAdLoaded();

    @Override
    void loadAd();

    void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig);

    @Override
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override
    boolean show();

    boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig);
}
