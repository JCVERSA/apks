package com.bytedance.sdk.openadsdk.component;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import java.util.concurrent.atomic.AtomicBoolean;

public class HiB implements com.bytedance.sdk.openadsdk.Sj.EjP.sP {
    private final PAGAppOpenAdInteractionListener Sj;
    private final AtomicBoolean sP = new AtomicBoolean(false);

    public HiB(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.Sj = pAGAppOpenAdInteractionListener;
    }

    @Override
    public void Sj() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.Sj;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdShowed();
        }
    }

    @Override
    public void TKC() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener;
        if (this.sP.getAndSet(true) || (pAGAppOpenAdInteractionListener = this.Sj) == null) {
            return;
        }
        pAGAppOpenAdInteractionListener.onAdDismissed();
    }

    @Override
    public void onAdClicked() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.Sj;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdClicked();
        }
    }

    @Override
    public void sP() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener;
        if (this.sP.getAndSet(true) || (pAGAppOpenAdInteractionListener = this.Sj) == null) {
            return;
        }
        pAGAppOpenAdInteractionListener.onAdDismissed();
    }
}
