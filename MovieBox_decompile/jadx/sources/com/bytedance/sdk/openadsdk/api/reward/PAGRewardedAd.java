package com.bytedance.sdk.openadsdk.api.reward;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.api.PAGClientBidding;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.factory.ISDKTypeFactory;
import com.bytedance.sdk.openadsdk.api.model.PAGErrorModel;
import com.bytedance.sdk.openadsdk.common.HiB;

public abstract class PAGRewardedAd implements PAGClientBidding, PangleAd {
    public static void loadAd(@NonNull String str, @NonNull PAGRewardedRequest pAGRewardedRequest, @NonNull PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        ISDKTypeFactory iSDKTypeFactorySj = HiB.Sj(pAGRewardedAdLoadListener);
        if (iSDKTypeFactorySj != null) {
            iSDKTypeFactorySj.createADTypeLoaderFactory(str).createRewardAdLoader().loadAd(str, pAGRewardedRequest, pAGRewardedAdLoadListener);
        }
    }

    public abstract void setAdInteractionCallback(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback);

    public abstract void setAdInteractionListener(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener);

    public abstract void show(@Nullable Activity activity);

    public static void loadAd(@NonNull String str, @NonNull PAGRewardedRequest pAGRewardedRequest, @NonNull final PAGRewardedAdLoadCallback pAGRewardedAdLoadCallback) {
        loadAd(str, pAGRewardedRequest, new PAGRewardedAdLoadListener() {
            @Override
            public void onError(int i10, String str2) {
                pAGRewardedAdLoadCallback.onError(new PAGErrorModel(i10, str2));
            }

            @Override
            public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
                pAGRewardedAdLoadCallback.onAdLoaded(pAGRewardedAd);
            }
        });
    }
}
