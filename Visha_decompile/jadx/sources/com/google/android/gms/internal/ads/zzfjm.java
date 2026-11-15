package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdFormat;

final class zzfjm implements Runnable {
    final z5 zza;

    public zzfjm(z5 z5Var) {
        this.zza = z5Var;
    }

    @Override
    public final void run() {
        z5 z5Var = this.zza;
        if (z5Var.n != null) {
            z5Var.n.d(AdFormat.getAdFormat(z5Var.e.zzb), z5Var.o.currentTimeMillis());
        }
    }
}
