package com.bytedance.sdk.openadsdk.Sj.sP;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Jcg implements vS {
    private final PAGNativeAdInteractionListener Sj;

    public Jcg(PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        this.Sj = pAGNativeAdInteractionListener;
    }

    @Override
    public void onAdClicked() {
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Jcg.this.Sj != null) {
                    Jcg.this.Sj.onAdClicked();
                }
            }
        });
    }

    @Override
    public boolean sP() {
        return this.Sj != null;
    }

    @Override
    public void Sj(PAGNativeAd pAGNativeAd) {
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Jcg.this.Sj != null) {
                    Jcg.this.Sj.onAdShowed();
                }
            }
        });
    }

    @Override
    public void Sj() {
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Jcg.this.Sj != null) {
                    Jcg.this.Sj.onAdDismissed();
                }
            }
        });
    }
}
