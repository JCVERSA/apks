package com.google.android.libraries.places.internal;

import java.io.IOException;

abstract class zzbrh implements Runnable {
    final zzbri zzc;

    @Override
    public final void run() {
        try {
            if (this.zzc.zzh == null) {
                throw new IOException("Unable to perform write due to unavailable sink.");
            }
            zza();
        } catch (Exception e10) {
            this.zzc.zzd.zzb(e10);
        }
    }

    public abstract void zza() throws IOException;
}
