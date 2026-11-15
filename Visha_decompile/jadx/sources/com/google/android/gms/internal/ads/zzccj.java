package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzv;

final class zzccj implements Runnable {
    final y3 zza;

    public zzccj(y3 y3Var) {
        this.zza = y3Var;
    }

    @Override
    public final void run() {
        zzv.zzz().f(this.zza);
    }
}
