package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.zzv;

final class zzbrp implements Runnable {
    final AdOverlayInfoParcel zza;
    final zzbrq zzb;

    public zzbrp(zzbrq zzbrqVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zza = adOverlayInfoParcel;
        this.zzb = zzbrqVar;
    }

    @Override
    public final void run() {
        zzv.zzj();
        zzn.zza(this.zzb.a, this.zza, true, null);
    }
}
