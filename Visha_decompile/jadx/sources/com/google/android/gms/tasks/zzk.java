package com.google.android.gms.tasks;

import defpackage.wd8;
import defpackage.xda;

final class zzk implements Runnable {
    final xda zza;
    final f zzb;

    public zzk(f fVar, xda xdaVar) {
        this.zzb = fVar;
        this.zza = xdaVar;
    }

    @Override
    public final void run() {
        synchronized (this.zzb.b) {
            try {
                f fVar = this.zzb;
                if (fVar.c != null) {
                    fVar.c.a((Exception) wd8.l(this.zza.l()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
