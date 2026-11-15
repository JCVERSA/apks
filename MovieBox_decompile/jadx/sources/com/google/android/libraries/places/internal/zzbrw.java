package com.google.android.libraries.places.internal;

final class zzbrw implements zzbec {
    final zzbry zza;

    zzbrw(zzbry zzbryVar) {
        this.zza = zzbryVar;
    }

    @Override
    public final void zza(zzbdo zzbdoVar) {
        int i10 = zzbvr.zza;
        synchronized (this.zza.zzf.zzc) {
            this.zza.zzf.zzQ(zzbdoVar, true, null);
        }
    }

    @Override
    public final void zzb(zzbra zzbraVar, boolean z10, boolean z11, int i10) {
        zzbwb zzbwbVarZze;
        int i11 = zzbvr.zza;
        if (zzbraVar == null) {
            zzbwbVarZze = zzbry.zza;
        } else {
            zzbwbVarZze = ((zzbsn) zzbraVar).zze();
            int iZzg = (int) zzbwbVarZze.zzg();
            if (iZzg > 0) {
                this.zza.zzs(iZzg);
            }
        }
        synchronized (this.zza.zzf.zzc) {
            zzbrx.zzL(this.zza.zzf, zzbwbVarZze, z10, z11);
            this.zza.zze().zzd(i10);
        }
    }

    @Override
    public final void zzc(zzbcf zzbcfVar, byte[] bArr) {
        int i10 = zzbvr.zza;
        String str = "/" + this.zza.zzb.zzf();
        synchronized (this.zza.zzf.zzc) {
            zzbrx.zzM(this.zza.zzf, zzbcfVar, str);
        }
    }
}
