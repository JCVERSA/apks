package com.google.android.gms.internal.ads;

import defpackage.ojf;
import java.util.Timer;
import java.util.TimerTask;

final class zzfke extends TimerTask {
    final Timer zza;
    final b6 zzb;
    final ojf zzc;

    public zzfke(b6 b6Var, ojf ojfVar, Timer timer) {
        this.zzc = ojfVar;
        this.zza = timer;
        this.zzb = b6Var;
    }

    @Override
    public final void run() {
        this.zzb.h();
        zzcfd.zzaI(this.zzc.a, true);
        this.zza.cancel();
    }
}
