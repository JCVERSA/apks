package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicBoolean;

final class zzbno extends zzbbk {
    final zzbnp zza;
    private final zzbbj zzb;
    private final AtomicBoolean zzc = new AtomicBoolean(false);

    zzbno(zzbnp zzbnpVar, zzbbj zzbbjVar) {
        this.zza = zzbnpVar;
        this.zzb = zzbbjVar;
    }

    @Override
    public final zzbbe zza(zzbbf zzbbfVar) {
        if (this.zzc.compareAndSet(false, true)) {
            zzbdw zzbdwVarZzb = this.zza.zzf.zzb();
            zzbdwVarZzb.zzc(new zzbnn(this));
            zzbdwVarZzb.zzb();
        }
        return zzbbe.zzc();
    }
}
