package com.google.android.gms.tasks;

import defpackage.fea;
import defpackage.xda;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

final class zzo implements Runnable {
    final xda zza;
    final h zzb;

    public zzo(h hVar, xda xdaVar) {
        this.zzb = hVar;
        this.zza = xdaVar;
    }

    @Override
    public final void run() {
        try {
            xda xdaVarA = this.zzb.b.a(this.zza.m());
            if (xdaVarA == null) {
                this.zzb.a(new NullPointerException("Continuation returned null"));
                return;
            }
            h hVar = this.zzb;
            Executor executor = fea.b;
            xdaVarA.g(executor, hVar);
            xdaVarA.e(executor, this.zzb);
            xdaVarA.a(executor, this.zzb);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzb.a((Exception) e.getCause());
            } else {
                this.zzb.a(e);
            }
        } catch (CancellationException unused) {
            this.zzb.b();
        } catch (Exception e2) {
            this.zzb.a(e2);
        }
    }
}
