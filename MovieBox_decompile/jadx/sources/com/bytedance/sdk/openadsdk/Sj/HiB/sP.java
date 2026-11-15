package com.bytedance.sdk.openadsdk.Sj.HiB;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class sP implements PAGRewardedAdLoadListener {
    private final PAGRewardedAdLoadListener Sj;

    public sP(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.Sj = pAGRewardedAdLoadListener;
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
                if (sP.this.Sj != null) {
                    sP.this.Sj.onError(i10, str);
                }
            }
        });
    }

    @Override
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (sP.this.Sj != null) {
                    sP.this.Sj.onAdLoaded(pAGRewardedAd);
                }
            }
        });
    }
}
