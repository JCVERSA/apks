package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzbrc extends zzbrh {
    final zzbvq zza;
    final zzbri zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbrc(zzbri zzbriVar) {
        super(zzbriVar, null);
        this.zzb = zzbriVar;
        this.zza = zzbvr.zza();
    }

    @Override
    public final void zza() throws IOException {
        int i10;
        zzbwb zzbwbVar = new zzbwb();
        int i11 = zzbvr.zza;
        synchronized (this.zzb.zza) {
            zzbri zzbriVar = this.zzb;
            zzbwbVar.zzn(zzbriVar.zzb, zzbriVar.zzb.zzf());
            this.zzb.zze = false;
            i10 = this.zzb.zzl;
        }
        this.zzb.zzh.zzn(zzbwbVar, zzbwbVar.zzg());
        synchronized (this.zzb.zza) {
            this.zzb.zzl -= i10;
        }
    }
}
