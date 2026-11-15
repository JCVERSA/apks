package com.google.android.gms.internal.ads;

final class zzaup implements Runnable {
    final c0 zza;

    public zzaup(c0 c0Var) {
        this.zza = c0Var;
    }

    @Override
    public final void run() {
        c0 c0Var = this.zza;
        synchronized (c0Var.o) {
            if (c0Var.p) {
                return;
            }
            c0Var.p = true;
            try {
                c0.e(c0Var);
            } catch (Exception e) {
                this.zza.g.c(2023, -1L, e);
            }
            c0 c0Var2 = this.zza;
            synchronized (c0Var2.o) {
                c0Var2.p = false;
            }
        }
    }
}
