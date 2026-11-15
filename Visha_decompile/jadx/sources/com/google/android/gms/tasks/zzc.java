package com.google.android.gms.tasks;

import defpackage.xda;

final class zzc implements Runnable {
    final xda zza;
    final b zzb;

    public zzc(b bVar, xda xdaVar) {
        this.zzb = bVar;
        this.zza = xdaVar;
    }

    @Override
    public final void run() {
        if (this.zza.o()) {
            this.zzb.c.u();
            return;
        }
        try {
            this.zzb.c.t(this.zzb.b.a(this.zza));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzb.c.s((Exception) e.getCause());
            } else {
                this.zzb.c.s(e);
            }
        } catch (Exception e2) {
            this.zzb.c.s(e2);
        }
    }
}
