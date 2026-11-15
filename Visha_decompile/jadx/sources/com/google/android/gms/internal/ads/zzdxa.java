package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbb;
import defpackage.eff;
import defpackage.msg;

public final class zzdxa extends zzbup {
    private final eff zza;
    private final zzbuy zzb;

    public zzdxa(eff effVar, zzbuy zzbuyVar) {
        this.zza = effVar;
        this.zzb = zzbuyVar;
    }

    @Override
    public final void zze(zzbb zzbbVar) {
        this.zza.d(zzbbVar.zza());
    }

    @Override
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.c(new msg(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.zzb));
    }

    @Override
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbuy zzbuyVar) {
        this.zza.c(new msg(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbuyVar));
    }
}
