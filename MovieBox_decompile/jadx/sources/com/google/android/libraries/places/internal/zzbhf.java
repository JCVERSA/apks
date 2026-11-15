package com.google.android.libraries.places.internal;

final class zzbhf extends zzbhy {
    final zzbhg zza;
    private final zzbbf zzb;
    private final zzazj zzc = zzazj.zzb();
    private final zzayx[] zzd;

    zzbhf(zzbhg zzbhgVar, zzbbf zzbbfVar, zzayx[] zzayxVarArr, zzbhe zzbheVar) {
        this.zza = zzbhgVar;
        this.zzb = zzbbfVar;
        this.zzd = zzayxVarArr;
    }

    static Runnable zzb(zzbhf zzbhfVar, zzbfu zzbfuVar) {
        zzazj zzazjVarZza = zzbhfVar.zzc.zza();
        try {
            zzbbf zzbbfVar = zzbhfVar.zzb;
            zzbfr zzbfrVarZza = zzbfuVar.zza(zzbbfVar.zzc(), zzbbfVar.zzb(), zzbbfVar.zza(), zzbhfVar.zzd);
            return zzbhfVar.zze(zzbfrVarZza);
        } finally {
            zzbhfVar.zzc.zze(zzazjVarZza);
        }
    }

    @Override
    protected final void zzc(zzbdo zzbdoVar) {
        int i10 = 0;
        while (true) {
            zzayx[] zzayxVarArr = this.zzd;
            if (i10 >= zzayxVarArr.length) {
                return;
            }
            zzayx zzayxVar = zzayxVarArr[i10];
            i10++;
        }
    }

    @Override
    public final void zzg(zzbjj zzbjjVar) {
        if (this.zzb.zza().zzo()) {
            zzbjjVar.zza("wait_for_ready");
        }
        super.zzg(zzbjjVar);
    }

    @Override
    public final void zzh(zzbdo zzbdoVar) {
        super.zzh(zzbdoVar);
        synchronized (this.zza.zzb) {
            try {
                zzbhg zzbhgVar = this.zza;
                if (zzbhgVar.zzg != null) {
                    boolean zRemove = zzbhgVar.zzi.remove(this);
                    if (!this.zza.zzn() && zRemove) {
                        zzbhg zzbhgVar2 = this.zza;
                        zzbhgVar2.zzd.zzc(zzbhgVar2.zzf);
                        zzbhg zzbhgVar3 = this.zza;
                        if (zzbhgVar3.zzj != null) {
                            zzbhgVar3.zzd.zzc(zzbhgVar3.zzg);
                            this.zza.zzg = null;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.zza.zzd.zzb();
    }
}
