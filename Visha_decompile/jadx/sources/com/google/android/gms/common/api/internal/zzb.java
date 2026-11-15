package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import defpackage.tk5;
import java.util.Objects;

final class zzb implements Runnable {
    final tk5 zza;
    final String zzb;
    final u zzc;

    public zzb(u uVar, tk5 tk5Var, String str) {
        this.zza = tk5Var;
        this.zzb = str;
        Objects.requireNonNull(uVar);
        this.zzc = uVar;
    }

    @Override
    public final void run() {
        Bundle bundle;
        u uVar = this.zzc;
        if (uVar.k() > 0) {
            tk5 tk5Var = this.zza;
            if (uVar.l() != null) {
                bundle = uVar.l().getBundle(this.zzb);
            } else {
                bundle = null;
            }
            tk5Var.f(bundle);
        }
        if (uVar.k() >= 2) {
            this.zza.j();
        }
        if (uVar.k() >= 3) {
            this.zza.h();
        }
        if (uVar.k() >= 4) {
            this.zza.k();
        }
        if (uVar.k() >= 5) {
            this.zza.g();
        }
    }
}
