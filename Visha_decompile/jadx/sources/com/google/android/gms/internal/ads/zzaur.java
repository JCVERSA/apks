package com.google.android.gms.internal.ads;

import defpackage.cye;

final class zzaur implements Runnable {
    final d0 zza;

    public zzaur(d0 d0Var) {
        this.zza = d0Var;
    }

    @Override
    public final void run() {
        boolean zBooleanValue;
        d0 d0Var = this.zza;
        if (d0Var.b != null) {
            return;
        }
        synchronized (d0.c) {
            if (d0Var.b != null) {
                return;
            }
            boolean z = false;
            try {
                zBooleanValue = ((Boolean) cye.L2.e()).booleanValue();
            } catch (IllegalStateException unused) {
                zBooleanValue = false;
            }
            if (zBooleanValue) {
                try {
                    d0.d = i6.b(this.zza.a.a, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z = zBooleanValue;
            this.zza.b = Boolean.valueOf(z);
            d0.c.open();
        }
    }
}
