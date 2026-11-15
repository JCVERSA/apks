package com.google.android.gms.internal.ads;

final class zzfkm implements Runnable {
    final c6 zza;

    public zzfkm(c6 c6Var) {
        this.zza = c6Var;
    }

    @Override
    public final void run() {
        c6 c6Var = this.zza;
        float fA = c6.a(c6Var);
        if (((Float) c6Var.c.getAndSet(Float.valueOf(fA))).floatValue() != fA) {
            c6Var.d.d(fA);
        }
    }
}
