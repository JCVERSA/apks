package com.google.android.libraries.places.internal;

import java.util.logging.Level;

public final class zzben {
    final zzbeo zza;
    private final long zzb;

    zzben(zzbeo zzbeoVar, long j10, zzbem zzbemVar) {
        this.zza = zzbeoVar;
        this.zzb = j10;
    }

    public final void zza() {
        zzbeo zzbeoVar = this.zza;
        long j10 = this.zzb;
        long jMax = Math.max(j10 + j10, j10);
        if (zzbeoVar.zzc.compareAndSet(j10, jMax)) {
            zzbeo.zza.logp(Level.WARNING, "io.grpc.internal.AtomicBackoff$State", "backoff", "Increased {0} to {1}", new Object[]{this.zza.zzb, Long.valueOf(jMax)});
        }
    }
}
