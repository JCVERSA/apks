package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

final class zzlz implements Runnable {
    private final AtomicReference zza;
    private final zzo zzb;
    private final zzls zzc;

    zzlz(zzls zzlsVar, AtomicReference atomicReference, zzo zzoVar) {
        this.zza = atomicReference;
        this.zzb = zzoVar;
        this.zzc = zzlsVar;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    if (!this.zzc.zzk().zzo().zzh()) {
                        this.zzc.zzj().zzv().zza("Analytics storage consent denied; will not get app instance id");
                        this.zzc.zzm().zzc((String) null);
                        this.zzc.zzk().zze.zza(null);
                        this.zza.set(null);
                        this.zza.notify();
                        return;
                    }
                    zzgb zzgbVar = this.zzc.zzb;
                    if (zzgbVar == null) {
                        this.zzc.zzj().zzg().zza("Failed to get app instance id");
                        this.zza.notify();
                        return;
                    }
                    Preconditions.checkNotNull(this.zzb);
                    this.zza.set(zzgbVar.zzb(this.zzb));
                    String str = (String) this.zza.get();
                    if (str != null) {
                        this.zzc.zzm().zzc(str);
                        this.zzc.zzk().zze.zza(str);
                    }
                    this.zzc.zzar();
                    this.zza.notify();
                } catch (RemoteException e10) {
                    this.zzc.zzj().zzg().zza("Failed to get app instance id", e10);
                    this.zza.notify();
                }
            } catch (Throwable th2) {
                this.zza.notify();
                throw th2;
            }
        }
    }
}
