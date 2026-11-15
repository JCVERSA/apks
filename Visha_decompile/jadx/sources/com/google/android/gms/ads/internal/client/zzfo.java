package com.google.android.gms.ads.internal.client;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;

public final class zzfo extends zzdp {

    @Nullable
    private final OnPaidEventListener zza;

    public zzfo(@Nullable OnPaidEventListener onPaidEventListener) {
        this.zza = onPaidEventListener;
    }

    @Override
    public final void zze(zzt zztVar) {
        OnPaidEventListener onPaidEventListener = this.zza;
        if (onPaidEventListener != null) {
            onPaidEventListener.onPaidEvent(AdValue.zza(zztVar.zzb, zztVar.zzc, zztVar.zzd));
        }
    }

    @Override
    public final boolean zzf() {
        return this.zza == null;
    }
}
