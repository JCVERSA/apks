package com.google.android.gms.ads.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbwd;
import defpackage.cye;
import defpackage.kcf;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public abstract class RewardedAd {
    public static boolean isAdAvailable(@NonNull Context context, @NonNull String str) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        try {
            return com.google.android.gms.ads.zzb.zza(context).zzl(str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final RewardedAdLoadCallback rewardedAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        wd8.m(adRequest, "AdRequest cannot be null.");
        wd8.m(rewardedAdLoadCallback, "LoadCallback cannot be null.");
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
                            new kcf(context2, str2).a(adRequest2.zza(), rewardedAdLoadCallback);
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "RewardedAd.load");
                        }
                    }
                });
                return;
            }
        }
        zzo.zze("Loading on UI thread");
        new kcf(context, str).a(adRequest.zza(), rewardedAdLoadCallback);
    }

    @Nullable
    public static RewardedAd pollAd(@NonNull Context context, @NonNull String str) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        try {
            zzbwd zzbwdVarZzg = com.google.android.gms.ads.zzb.zza(context).zzg(str);
            if (zzbwdVarZzg != null) {
                return new kcf(context, str, zzbwdVarZzg);
            }
            zzo.zzl("Failed to obtain a Rewarded Ad from the preloader.", null);
            return null;
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
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

    public abstract void setServerSideVerificationOptions(@Nullable ServerSideVerificationOptions serverSideVerificationOptions);

    public abstract void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener);

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @NonNull final RewardedAdLoadCallback rewardedAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        wd8.m(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        wd8.m(rewardedAdLoadCallback, "LoadCallback cannot be null.");
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(context);
        if (((Boolean) xze.k.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                zzo.zze("Loading on background thread");
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new kcf(context2, str2).a(adManagerAdRequest2.zza(), rewardedAdLoadCallback);
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "RewardedAd.loadAdManager");
                        }
                    }
                });
                return;
            }
        }
        zzo.zze("Loading on UI thread");
        new kcf(context, str).a(adManagerAdRequest.zza(), rewardedAdLoadCallback);
    }
}
