package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

final class zzmn implements Runnable {
    private final AtomicReference zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final zzo zze;
    private final boolean zzf;
    private final zzls zzg;

    zzmn(zzls zzlsVar, AtomicReference atomicReference, String str, String str2, String str3, zzo zzoVar, boolean z10) {
        this.zza = atomicReference;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = zzoVar;
        this.zzf = z10;
        this.zzg = zzlsVar;
    }

    @Override
    public final void run() {
        synchronized (this.zza) {
            try {
                try {
                    zzgb zzgbVar = this.zzg.zzb;
                    if (zzgbVar == null) {
                        this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; not connected to service", zzgo.zza(this.zzb), this.zzc, this.zzd);
                        this.zza.set(Collections.emptyList());
                        this.zza.notify();
                    } else {
                        if (TextUtils.isEmpty(this.zzb)) {
                            Preconditions.checkNotNull(this.zze);
                            this.zza.set(zzgbVar.zza(this.zzc, this.zzd, this.zzf, this.zze));
                        } else {
                            this.zza.set(zzgbVar.zza(this.zzb, this.zzc, this.zzd, this.zzf));
                        }
                        this.zzg.zzar();
                        this.zza.notify();
                    }
                } catch (RemoteException e10) {
                    this.zzg.zzj().zzg().zza("(legacy) Failed to get user properties; remote exception", zzgo.zza(this.zzb), this.zzc, e10);
                    this.zza.set(Collections.emptyList());
                    this.zza.notify();
                }
            } catch (Throwable th2) {
                this.zza.notify();
                throw th2;
            }
        }
    }
}
