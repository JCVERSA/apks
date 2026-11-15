package com.google.android.gms.internal.ads;

import android.view.View;

final class zzazc implements Runnable {
    final View zza;
    final zzazg zzb;

    public zzazc(zzazg zzazgVar, View view) {
        this.zza = view;
        this.zzb = zzazgVar;
    }

    @Override
    public final void run() {
        this.zzb.zzb(this.zza);
    }
}
