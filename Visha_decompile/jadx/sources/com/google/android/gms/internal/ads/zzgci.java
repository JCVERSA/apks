package com.google.android.gms.internal.ads;

final class zzgci extends w7 implements Runnable {
    private final Runnable zza;

    public zzgci(Runnable runnable) {
        runnable.getClass();
        this.zza = runnable;
    }

    @Override
    public final void run() {
        try {
            this.zza.run();
        } catch (Throwable th) {
            zzd(th);
            throw th;
        }
    }

    @Override
    public final String zza() {
        return "task=[" + this.zza.toString() + "]";
    }
}
