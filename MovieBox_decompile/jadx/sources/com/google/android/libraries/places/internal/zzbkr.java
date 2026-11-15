package com.google.android.libraries.places.internal;

import java.util.HashSet;

final class zzbkr extends zzbpo {
    final zzbcl zza;
    final zzbcf zzb;
    final zzayj zzc;
    final zzbpp zzd;
    final zzbje zze;
    final zzazj zzf;
    final zzbkt zzg;

    /* JADX WARN: Illegal instructions before constructor call */
    zzbkr(zzbkt zzbktVar, zzbcl zzbclVar, zzbcf zzbcfVar, zzayj zzayjVar, zzbpp zzbppVar, zzbje zzbjeVar, zzazj zzazjVar) {
        this.zza = zzbclVar;
        this.zzb = zzbcfVar;
        this.zzc = zzayjVar;
        this.zzd = zzbppVar;
        this.zze = zzbjeVar;
        this.zzf = zzazjVar;
        this.zzg = zzbktVar;
        zzbma zzbmaVar = zzbktVar.zzb;
        super(zzbclVar, zzbcfVar, zzbmaVar.zzac, zzbmaVar.zzad, zzbmaVar.zzae, zzbma.zzJ(zzbmaVar, zzayjVar), zzbktVar.zzb.zzq.zzb(), zzbppVar, zzbjeVar, zzbktVar.zza);
    }

    @Override
    final zzbdo zza() {
        zzblz zzblzVar = this.zzg.zzb.zzO;
        synchronized (zzblzVar.zza) {
            try {
                zzbdo zzbdoVar = zzblzVar.zzc;
                if (zzbdoVar != null) {
                    return zzbdoVar;
                }
                zzblzVar.zzb.add(this);
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    final zzbfr zzb(zzbcf zzbcfVar, zzayu zzayuVar, int i10, boolean z10) {
        zzayj zzayjVarZzf = this.zzc.zzf(zzayuVar);
        zzayx[] zzayxVarArrZzk = zzbjd.zzk(zzayjVarZzf, zzbcfVar, i10, z10);
        zzbfu zzbfuVarZzc = this.zzg.zzc(new zzbnr(this.zza, zzbcfVar, zzayjVarZzf));
        zzazj zzazjVarZza = this.zzf.zza();
        try {
            return zzbfuVarZzc.zza(this.zza, zzbcfVar, zzayjVarZzf, zzayxVarArrZzk);
        } finally {
            this.zzf.zze(zzazjVarZza);
        }
    }

    @Override
    final void zzc() {
        zzbdo zzbdoVar;
        zzblz zzblzVar = this.zzg.zzb.zzO;
        synchronized (zzblzVar.zza) {
            try {
                zzblzVar.zzb.remove(this);
                if (zzblzVar.zzb.isEmpty()) {
                    zzbdoVar = zzblzVar.zzc;
                    zzblzVar.zzb = new HashSet();
                } else {
                    zzbdoVar = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (zzbdoVar != null) {
            zzblzVar.zzd.zzN.zzd(zzbdoVar);
        }
    }
}
