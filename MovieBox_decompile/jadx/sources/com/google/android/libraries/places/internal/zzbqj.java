package com.google.android.libraries.places.internal;

final class zzbqj implements Runnable {
    final zzbqk zza;
    final zzbql zzb;
    final Object zzc;
    final zzbqm zzd;

    zzbqj(zzbqm zzbqmVar, zzbqk zzbqkVar, zzbql zzbqlVar, Object obj) {
        this.zza = zzbqkVar;
        this.zzb = zzbqlVar;
        this.zzc = obj;
        this.zzd = zzbqmVar;
    }

    @Override
    public final void run() {
        synchronized (this.zzd) {
            try {
                if (this.zza.zzb == 0) {
                    try {
                        this.zzb.zzb(this.zzc);
                        this.zzd.zzb.remove(this.zzb);
                        if (this.zzd.zzb.isEmpty()) {
                            this.zzd.zzc.shutdown();
                            this.zzd.zzc = null;
                        }
                    } catch (Throwable th2) {
                        this.zzd.zzb.remove(this.zzb);
                        if (this.zzd.zzb.isEmpty()) {
                            this.zzd.zzc.shutdown();
                            this.zzd.zzc = null;
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
