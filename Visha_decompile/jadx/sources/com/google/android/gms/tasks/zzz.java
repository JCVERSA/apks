package com.google.android.gms.tasks;

import defpackage.eoj;
import java.util.concurrent.Callable;

final class zzz implements Runnable {
    final eoj zza;
    final Callable zzb;

    public zzz(eoj eojVar, Callable callable) {
        this.zza = eojVar;
        this.zzb = callable;
    }

    @Override
    public final void run() {
        try {
            this.zza.t(this.zzb.call());
        } catch (Exception e) {
            this.zza.s(e);
        } catch (Throwable th) {
            this.zza.s(new RuntimeException(th));
        }
    }
}
