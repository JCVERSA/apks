package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class zzbcy extends zzbcz {
    private final zzg zza;

    @Nullable
    private final String zzb;
    private final String zzc;

    public zzbcy(zzg zzgVar, @Nullable String str, String str2) {
        this.zza = zzgVar;
        this.zzb = str;
        this.zzc = str2;
    }

    @Override
    public final String zzb() {
        return this.zzb;
    }

    @Override
    public final String zzc() {
        return this.zzc;
    }

    @Override
    public final void zzd(@Nullable IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.zza.zza((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override
    public final void zze() {
        this.zza.zzb();
    }

    @Override
    public final void zzf() {
        this.zza.zzc();
    }
}
