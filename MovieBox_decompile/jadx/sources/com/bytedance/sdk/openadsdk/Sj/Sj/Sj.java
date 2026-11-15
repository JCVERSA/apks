package com.bytedance.sdk.openadsdk.Sj.Sj;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Sj implements PAGBannerAdLoadListener {
    private final PAGBannerAdLoadListener Sj;

    public Sj(PAGBannerAdLoadListener pAGBannerAdLoadListener) {
        this.Sj = pAGBannerAdLoadListener;
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
                Sj.this.Sj.onError(i10, str);
            }
        });
    }

    @Override
    public void onAdLoaded(final PAGBannerAd pAGBannerAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                Sj.this.Sj.onAdLoaded(pAGBannerAd);
            }
        });
    }
}
