package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
import defpackage.faf;

public final class zzbsn extends zzbhg {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbsn(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override
    public final void zze(zzbhn zzbhnVar) {
        this.zza.onNativeAdLoaded(new faf(zzbhnVar));
    }
}
