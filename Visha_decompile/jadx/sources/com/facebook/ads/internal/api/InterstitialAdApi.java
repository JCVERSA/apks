package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.InterstitialAd;
import com.facebook.proguard.annotations.DoNotStripAny;

@Keep
@DoNotStripAny
@UiThread
public interface InterstitialAdApi extends FullScreenAd {
    @Override
    InterstitialAd.InterstitialAdLoadConfigBuilder buildLoadAdConfig();

    @Override
    InterstitialAd.InterstitialAdShowConfigBuilder buildShowAdConfig();

    boolean isAdLoaded();

    void loadAd(InterstitialAd.InterstitialLoadAdConfig interstitialLoadAdConfig);

    @Override
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override
    boolean show();

    boolean show(InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig);
}
