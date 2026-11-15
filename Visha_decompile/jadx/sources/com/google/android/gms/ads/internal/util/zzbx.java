package com.google.android.gms.ads.internal.util;

public final class zzbx {
    public long a;
    public long b = Long.MIN_VALUE;
    public final Object c = new Object();

    public zzbx(long j) {
        this.a = j;
    }

    public final void zza(long j) {
        synchronized (this.c) {
            this.a = j;
        }
    }

    public final boolean zzb() {
        synchronized (this.c) {
            try {
                long jElapsedRealtime = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
                if (this.b + this.a > jElapsedRealtime) {
                    return false;
                }
                this.b = jElapsedRealtime;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
