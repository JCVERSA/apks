package com.google.android.gms.ads.rewardedinterstitial;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import defpackage.cye;
import defpackage.qcf;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public abstract class RewardedInterstitialAd {
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        wd8.m(adRequest, "AdRequest cannot be null.");
        wd8.m(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(context);
        if (((Boolean) xze.k.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new qcf(context2, str2).a(adRequest2.zza(), rewardedInterstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "RewardedInterstitialAd.load");
                        }
                    }
                });
                return;
            }
        }
        new qcf(context, str).a(adRequest.zza(), rewardedInterstitialAdLoadCallback);
    }

    @NonNull
    public abstract Bundle getAdMetadata();

    @NonNull
    public abstract String getAdUnitId();

    @Nullable
    public abstract FullScreenContentCallback getFullScreenContentCallback();

    @Nullable
    public abstract OnAdMetadataChangedListener getOnAdMetadataChangedListener();

    @Nullable
    public abstract OnPaidEventListener getOnPaidEventListener();

    @NonNull
    public abstract ResponseInfo getResponseInfo();

    @NonNull
    public abstract RewardItem getRewardItem();

    public abstract void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener);

    public abstract void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener);

    public abstract void setServerSideVerificationOptions(@NonNull ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener);

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @NonNull final RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        wd8.m(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        wd8.m(rewardedInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(context);
        if (((Boolean) xze.k.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new qcf(context2, str2).a(adManagerAdRequest2.zza(), rewardedInterstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "RewardedInterstitialAdManager.load");
                        }
                    }
                });
                return;
            }
        }
        new qcf(context, str).a(adManagerAdRequest.zza(), rewardedInterstitialAdLoadCallback);
    }
}
