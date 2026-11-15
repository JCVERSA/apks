package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.preload.PreloadCallback;
import com.google.android.gms.ads.preload.PreloadConfiguration;

final class zzeo extends zzcd {
    final PreloadCallback zza;
    final zzet zzb;

    public zzeo(zzet zzetVar, PreloadCallback preloadCallback) {
        this.zza = preloadCallback;
        this.zzb = zzetVar;
    }

    @Override
    public final void zze(zzfp zzfpVar) {
        PreloadConfiguration preloadConfigurationG = zzet.g(this.zzb, zzfpVar);
        if (preloadConfigurationG != null) {
            this.zza.onAdsAvailable(preloadConfigurationG);
        }
    }

    @Override
    public final void zzf(zzfp zzfpVar) {
        PreloadConfiguration preloadConfigurationG = zzet.g(this.zzb, zzfpVar);
        if (preloadConfigurationG != null) {
            this.zza.onAdsExhausted(preloadConfigurationG);
        }
    }
}
