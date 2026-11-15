package com.google.android.gms.tasks;

import defpackage.xda;

final class zzi implements Runnable {
    final xda zza;
    final e zzb;

    public zzi(e eVar, xda xdaVar) {
        this.zzb = eVar;
        this.zza = xdaVar;
    }

    @Override
    public final void run() {
        synchronized (this.zzb.b) {
            try {
                e eVar = this.zzb;
                if (eVar.c != null) {
                    eVar.c.onComplete(this.zza);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
