package com.bytedance.sdk.openadsdk.core.TKC;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;

public class HiB implements PAGBannerAdWrapperListener {
    private final PAGBannerAdInteractionListener Sj;

    public HiB(PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        this.Sj = pAGBannerAdInteractionListener;
    }

    @Override
    public void onAdClicked() {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.Sj;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdClicked();
        }
    }

    @Override
    public void onAdDismissed() {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.Sj;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdDismissed();
        }
    }

    @Override
    public void onAdShow(View view, int i10) {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.Sj;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdShowed();
        }
    }

    @Override
    public void onRenderFail(View view, String str, int i10) {
    }

    @Override
    public void onRenderSuccess(View view, float f10, float f11) {
    }
}
