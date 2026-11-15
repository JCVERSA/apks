package com.vungle.ads;

public interface g extends h {
    @Override
    void onAdClicked(BaseAd baseAd);

    @Override
    void onAdEnd(BaseAd baseAd);

    @Override
    void onAdFailedToLoad(BaseAd baseAd, VungleError vungleError);

    @Override
    void onAdFailedToPlay(BaseAd baseAd, VungleError vungleError);

    @Override
    void onAdImpression(BaseAd baseAd);

    @Override
    void onAdLeftApplication(BaseAd baseAd);

    @Override
    void onAdLoaded(BaseAd baseAd);

    @Override
    void onAdStart(BaseAd baseAd);
}
