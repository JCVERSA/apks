package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;

final class zzly implements Runnable {
    private final AtomicReference zza;
    private final zzo zzb;
    private final Bundle zzc;
    private final zzls zzd;

    zzly(zzls zzlsVar, AtomicReference atomicReference, zzo zzoVar, Bundle bundle) {
        this.zza = atomicReference;
        this.zzb = zzoVar;
        this.zzc = bundle;
        this.zzd = zzlsVar;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzgb zzgbVar = this.zzd.zzb;
                    if (zzgbVar == null) {
                        this.zzd.zzj().zzg().zza("Failed to get trigger URIs; not connected to service");
                        this.zza.notify();
                    } else {
                        Preconditions.checkNotNull(this.zzb);
                        this.zza.set(zzgbVar.zza(this.zzb, this.zzc));
                        this.zzd.zzar();
                        this.zza.notify();
                    }
                } catch (RemoteException e10) {
                    this.zzd.zzj().zzg().zza("Failed to get trigger URIs; remote exception", e10);
                    this.zza.notify();
                }
            } catch (Throwable th2) {
                this.zza.notify();
                throw th2;
            }
        }
    }
}
