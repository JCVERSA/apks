package com.bytedance.sdk.openadsdk.component.reward;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Jcg implements PAGRewardedAdLoadListener {
    final PAGRewardedAdLoadListener Sj;

    public Jcg(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.Sj = pAGRewardedAdLoadListener;
    }

    @Override
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.Sj != null) {
            JcM.Sj(new Runnable() {
                @Override
                public void run() {
                    PAGRewardedAdLoadListener pAGRewardedAdLoadListener = Jcg.this.Sj;
                    if (pAGRewardedAdLoadListener != null) {
                        pAGRewardedAdLoadListener.onAdLoaded(pAGRewardedAd);
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
                    PAGRewardedAdLoadListener pAGRewardedAdLoadListener = Jcg.this.Sj;
                    if (pAGRewardedAdLoadListener != null) {
                        pAGRewardedAdLoadListener.onError(i10, str);
                    }
                }
            });
        }
    }
}
