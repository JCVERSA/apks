package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

final class zzmo implements Runnable {
    private final String zza;
    private final String zzb;
    private final zzo zzc;
    private final com.google.android.gms.internal.measurement.zzdo zzd;
    private final zzls zze;

    zzmo(zzls zzlsVar, String str, String str2, zzo zzoVar, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzoVar;
        this.zzd = zzdoVar;
        this.zze = zzlsVar;
    }

    @Override
    public final void run() {
        ArrayList<Bundle> arrayList = new ArrayList<>();
        try {
            try {
                zzgb zzgbVar = this.zze.zzb;
                if (zzgbVar == null) {
                    this.zze.zzj().zzg().zza("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                    this.zze.zzq().zza(this.zzd, arrayList);
                } else {
                    Preconditions.checkNotNull(this.zzc);
                    ArrayList<Bundle> arrayListZzb = zzos.zzb(zzgbVar.zza(this.zza, this.zzb, this.zzc));
                    this.zze.zzar();
                    this.zze.zzq().zza(this.zzd, arrayListZzb);
                }
            } catch (RemoteException e10) {
                this.zze.zzj().zzg().zza("Failed to get conditional properties; remote exception", this.zza, this.zzb, e10);
                this.zze.zzq().zza(this.zzd, arrayList);
            }
        } catch (Throwable th2) {
            this.zze.zzq().zza(this.zzd, arrayList);
            throw th2;
        }
    }
}
