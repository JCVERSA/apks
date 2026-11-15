package com.google.android.libraries.places.internal;

final class zzbuw extends zzbuu {
    private final zzbus zza;
    private Object zzb;
    private boolean zzc;

    zzbuw(zzbus zzbusVar) {
        super(null);
        this.zzc = false;
        this.zza = zzbusVar;
    }

    @Override
    public final void zza(zzbdo zzbdoVar, zzbcf zzbcfVar) {
        if (!zzbdoVar.zzl()) {
            this.zza.zzm(new zzbdq(zzbdoVar, zzbcfVar));
            return;
        }
        if (!this.zzc) {
            this.zza.zzm(new zzbdq(zzbdo.zzo.zzg("No value received for unary call"), zzbcfVar));
        }
        this.zza.zzl(this.zzb);
    }

    @Override
    public final void zzc(Object obj) {
        if (this.zzc) {
            throw new zzbdq(zzbdo.zzo.zzg("More than one value received for unary call"), null);
        }
        this.zzb = obj;
        this.zzc = true;
    }

    @Override
    final void zze() {
        this.zza.zzc.zzc(2);
    }

    @Override
    public final void zzb(zzbcf zzbcfVar) {
    }
}
