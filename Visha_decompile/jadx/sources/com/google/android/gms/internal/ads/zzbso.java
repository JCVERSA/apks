package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

public final class zzbso extends zzbhj {
    private final NativeAd.UnconfirmedClickListener zza;

    public zzbso(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.zza = unconfirmedClickListener;
    }

    @Override
    public final void zze() {
        this.zza.onUnconfirmedClickCancelled();
    }

    @Override
    public final void zzf(String str) {
        this.zza.onUnconfirmedClickReceived(str);
    }
}
