package com.google.android.gms.internal.play_billing;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

final class zzcf extends zzcl {
    private static final zzcf zza = new zzcf(zzcl.zze());
    private final AtomicReference zzb;

    zzcf(zzcl zzclVar) {
        this.zzb = new AtomicReference(zzclVar);
    }

    public static final zzcf zzb() {
        return zza;
    }

    @Override
    public final zzbh zza() {
        return ((zzcl) this.zzb.get()).zza();
    }

    @Override
    public final zzcy zzc() {
        return ((zzcl) this.zzb.get()).zzc();
    }

    @Override
    public final boolean zzd(String str, Level level, boolean z10) {
        ((zzcl) this.zzb.get()).zzd(str, level, z10);
        return false;
    }
}
