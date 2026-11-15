package com.bytedance.sdk.openadsdk.Sj.sP;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class HiB implements PAGNativeAdLoadListener {
    private final PAGNativeAdLoadListener Sj;

    public HiB(PAGNativeAdLoadListener pAGNativeAdLoadListener) {
        this.Sj = pAGNativeAdLoadListener;
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
                if (HiB.this.Sj != null) {
                    HiB.this.Sj.onError(i10, str);
                }
            }
        });
    }

    @Override
    public void onAdLoaded(final PAGNativeAd pAGNativeAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (HiB.this.Sj != null) {
                    HiB.this.Sj.onAdLoaded(pAGNativeAd);
                }
            }
        });
    }
}
