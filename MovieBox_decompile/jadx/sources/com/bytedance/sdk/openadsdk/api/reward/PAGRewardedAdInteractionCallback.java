package com.bytedance.sdk.openadsdk.api.reward;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;

public abstract class PAGRewardedAdInteractionCallback {
    public void onAdClicked() {
    }

    public void onAdDismissed() {
    }

    public void onAdShowed() {
    }

    @Deprecated
    public void onAdShowFailed(@NonNull PAGErrorModel pAGErrorModel) {
    }

    public void onUserEarnedReward(PAGRewardItem pAGRewardItem) {
    }

    public void onUserEarnedRewardFail(@NonNull PAGErrorModel pAGErrorModel) {
    }
}
