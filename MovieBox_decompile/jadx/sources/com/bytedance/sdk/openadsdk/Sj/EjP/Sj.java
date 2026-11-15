package com.bytedance.sdk.openadsdk.Sj.EjP;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.JcM;

public class Sj implements PAGAppOpenAdLoadListener {
    private final PAGAppOpenAdLoadListener Sj;

    public Sj(PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
        this.Sj = pAGAppOpenAdLoadListener;
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
    public void onAdLoaded(final PAGAppOpenAd pAGAppOpenAd) {
        if (this.Sj == null) {
            return;
        }
        JcM.Sj(new Runnable() {
            @Override
            public void run() {
                if (Sj.this.Sj != null) {
                    Sj.this.Sj.onAdLoaded(pAGAppOpenAd);
                }
            }
        });
    }
}
