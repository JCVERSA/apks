package com.bytedance.sdk.openadsdk.component.TKC;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class sP implements PAGInterstitialAdLoadListener {
    final PAGInterstitialAdLoadListener Sj;

    public sP(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.Sj = pAGInterstitialAdLoadListener;
    }

    @Override
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() {
                @Override
                public void run() {
                    PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = sP.this.Sj;
                    if (pAGInterstitialAdLoadListener != null) {
                        pAGInterstitialAdLoadListener.onAdLoaded(pAGInterstitialAd);
                    }
                }
            });
        }
    }

    @Override
    public void onError(final int i10, final String str) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() {
                @Override
                public void run() {
                    PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = sP.this.Sj;
                    if (pAGInterstitialAdLoadListener != null) {
                        pAGInterstitialAdLoadListener.onError(i10, str);
                    }
                }
            });
        }
    }
}
