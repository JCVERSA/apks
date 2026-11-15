package com.google.android.gms.tasks;

import defpackage.xda;

final class zzm implements Runnable {
    final xda zza;
    final g zzb;

    public zzm(g gVar, xda xdaVar) {
        this.zzb = gVar;
        this.zza = xdaVar;
    }

    @Override
    public final void run() {
        synchronized (this.zzb.b) {
            try {
                g gVar = this.zzb;
                if (gVar.c != null) {
                    gVar.c.onSuccess(this.zza.m());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
