package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class h8 extends f8 {
    public zzgbe j;

    public h8(zzfwr zzfwrVar, boolean z, Executor executor, Callable callable) {
        super(zzfwrVar, z, false);
        this.j = new zzgbd(this, callable, executor);
        r();
    }

    @Override
    public final void p(int i, Object obj) {
    }

    @Override
    public final void q() {
        zzgbe zzgbeVar = this.j;
        if (zzgbeVar != null) {
            zzgbeVar.zzf();
        }
    }

    @Override
    public final void s(int i) {
        super.s(i);
        if (i == 1) {
            this.j = null;
        }
    }

    @Override
    public final void zzk() {
        zzgbe zzgbeVar = this.j;
        if (zzgbeVar != null) {
            zzgbeVar.zzh();
        }
    }
}
