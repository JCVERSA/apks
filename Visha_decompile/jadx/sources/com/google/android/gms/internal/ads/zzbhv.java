package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.util.client.zzo;

final class zzbhv implements Runnable {
    final AdManagerAdView zza;
    final zzbx zzb;
    final zzbhw zzc;

    public zzbhv(zzbhw zzbhwVar, AdManagerAdView adManagerAdView, zzbx zzbxVar) {
        this.zza = adManagerAdView;
        this.zzb = zzbxVar;
        this.zzc = zzbhwVar;
    }

    @Override
    public final void run() {
        AdManagerAdView adManagerAdView = this.zza;
        if (adManagerAdView.zzb(this.zzb)) {
            this.zzc.zza.onAdManagerAdViewLoaded(adManagerAdView);
        } else {
            zzo.zzj("Could not bind.");
        }
    }
}
