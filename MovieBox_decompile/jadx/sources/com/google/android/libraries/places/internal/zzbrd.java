package com.google.android.libraries.places.internal;

import java.io.IOException;

final class zzbrd extends zzbrh {
    final zzbvq zza;
    final zzbri zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbrd(zzbri zzbriVar) {
        super(zzbriVar, null);
        this.zzb = zzbriVar;
        this.zza = zzbvr.zza();
    }

    @Override
    public final void zza() throws IOException {
        zzbwb zzbwbVar = new zzbwb();
        int i10 = zzbvr.zza;
        synchronized (this.zzb.zza) {
            zzbri zzbriVar = this.zzb;
            zzbwbVar.zzn(zzbriVar.zzb, zzbriVar.zzb.zzg());
            this.zzb.zzf = false;
        }
        this.zzb.zzh.zzn(zzbwbVar, zzbwbVar.zzg());
        this.zzb.zzh.flush();
    }
}
