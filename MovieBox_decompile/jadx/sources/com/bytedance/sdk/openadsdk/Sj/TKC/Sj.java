package com.bytedance.sdk.openadsdk.Sj.TKC;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Sj implements PAGInterstitialAdLoadListener {
    private final PAGInterstitialAdLoadListener Sj;

    public Sj(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.Sj = pAGInterstitialAdLoadListener;
    }

    @Override
    public void onError(final int i10, final String str) {
        if (this.Sj == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onError(i10, str);
                }
            }
        });
    }

    @Override
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onAdLoaded(pAGInterstitialAd);
                }
            }
        });
    }
}
