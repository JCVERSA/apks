package com.bytedance.sdk.openadsdk.component.TKC;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;

public class Sj implements com.bytedance.sdk.openadsdk.Sj.TKC.sP {
    private final PAGInterstitialAdInteractionListener Sj;

    public Sj(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.Sj = pAGInterstitialAdInteractionListener;
    }

    @Override
    public void Sj() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.Sj;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdShowed();
        }
    }

    @Override
    public void onAdClicked() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.Sj;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdClicked();
        }
    }

    @Override
    public void sP() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.Sj;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdDismissed();
        }
    }
}
