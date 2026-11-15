package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import defpackage.qcf;

public final class zzbww extends zzbwj {
    private final RewardedInterstitialAdLoadCallback zza;
    private final qcf zzb;

    public zzbww(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, qcf qcfVar) {
        this.zza = rewardedInterstitialAdLoadCallback;
        this.zzb = qcfVar;
    }

    @Override
    public final void zze(int i) {
    }

    @Override
    public final void zzf(zze zzeVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onAdFailedToLoad(zzeVar.zzb());
        }
    }

    @Override
    public final void zzg() {
        qcf qcfVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback == null || (qcfVar = this.zzb) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.onAdLoaded(qcfVar);
    }
}
