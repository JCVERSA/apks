package com.bytedance.sdk.openadsdk.api.interstitial;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;

public abstract class PAGInterstitialAdInteractionCallback implements PAGInterstitialAdInteractionListener {
    @Override
    public void onAdClicked() {
    }

    @Override
    public void onAdDismissed() {
    }

    @Override
    public void onAdShowed() {
    }

    @Deprecated
    public void onAdShowFailed(@NonNull PAGErrorModel pAGErrorModel) {
    }
}
