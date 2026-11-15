package com.google.android.gms.tasks;

import defpackage.fea;
import defpackage.xda;
import java.util.concurrent.Executor;

final class zze implements Runnable {
    final xda zza;
    final c zzb;

    public zze(c cVar, xda xdaVar) {
        this.zzb = cVar;
        this.zza = xdaVar;
    }

    @Override
    public final void run() {
        try {
            xda xdaVar = (xda) this.zzb.b.a(this.zza);
            if (xdaVar == null) {
                this.zzb.a(new NullPointerException("Continuation returned null"));
                return;
            }
            c cVar = this.zzb;
            Executor executor = fea.b;
            xdaVar.g(executor, cVar);
            xdaVar.e(executor, this.zzb);
            xdaVar.a(executor, this.zzb);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzb.c.s((Exception) e.getCause());
            } else {
                this.zzb.c.s(e);
            }
        } catch (Exception e2) {
            this.zzb.c.s(e2);
        }
    }
}
