package com.google.android.gms.internal.play_billing;

import defpackage.b3f;
import defpackage.g7f;
import defpackage.i1f;
import defpackage.mlg;
import defpackage.o8g;
import defpackage.ofg;
import defpackage.omg;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

final class zzde implements Runnable {
    final ofg zza;
    final o8g zzb;

    public zzde(ofg ofgVar, o8g o8gVar) {
        this.zza = ofgVar;
        this.zzb = o8gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        Object obj;
        Throwable thA;
        ofg ofgVar = this.zza;
        if ((ofgVar instanceof mlg) && (thA = omg.a((mlg) ofgVar)) != null) {
            this.zzb.zza(thA);
            return;
        }
        try {
            if (!ofgVar.isDone()) {
                throw new IllegalStateException(g7f.b("Future was expected to be done: %s", ofgVar));
            }
            boolean z = false;
            Future future = ofgVar;
            while (true) {
                try {
                    obj = future.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                    future = future;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            this.zzb.zzb(obj);
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th2) {
            this.zzb.zza(th2);
        }
    }

    public final String toString() {
        i1f i1fVarA = b3f.a(this);
        i1fVarA.a(this.zzb);
        return i1fVarA.toString();
    }
}
