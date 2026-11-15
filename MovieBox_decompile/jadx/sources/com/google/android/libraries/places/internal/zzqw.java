package com.google.android.libraries.places.internal;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

final class zzqw extends zzrc {
    private static final zzqw zza = new zzqw(zzrc.zze());
    private final AtomicReference zzb;

    zzqw(zzrc zzrcVar) {
        this.zzb = new AtomicReference(zzrcVar);
    }

    public static final zzqw zzb() {
        return zza;
    }

    @Override
    public final zzpy zza() {
        return ((zzrc) this.zzb.get()).zza();
    }

    @Override
    public final zzrp zzc() {
        return ((zzrc) this.zzb.get()).zzc();
    }

    @Override
    public final boolean zzd(String str, Level level, boolean z10) {
        ((zzrc) this.zzb.get()).zzd(str, level, z10);
        return false;
    }
}
