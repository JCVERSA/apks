package com.google.android.gms.internal.ads;

import defpackage.im5;

final class zzgag$zzb<V> implements Runnable {
    final x7 zza;
    final im5 zzb;

    public zzgag$zzb(x7 x7Var, im5 im5Var) {
        this.zza = x7Var;
        this.zzb = im5Var;
    }

    @Override
    public final void run() {
        if (this.zza.zzw() != this) {
            return;
        }
        if (d8.zzD(this.zza, this, x7.f(this.zzb))) {
            x7.d(this.zza, false);
        }
    }
}
