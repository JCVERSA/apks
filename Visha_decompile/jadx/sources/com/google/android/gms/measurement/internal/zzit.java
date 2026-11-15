package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzcf;
import defpackage.wd8;
import java.util.List;

final class zzit implements Runnable {
    final String zza;
    final String zzb;
    final zzq zzc;
    final boolean zzd;
    final zzcf zze;
    final j zzf;

    public zzit(j jVar, String str, String str2, zzq zzqVar, boolean z, zzcf zzcfVar) {
        this.zzf = jVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzqVar;
        this.zzd = z;
        this.zze = zzcfVar;
    }

    @Override
    public final void run() throws Throwable {
        Bundle bundle;
        RemoteException e;
        Bundle bundle2 = new Bundle();
        try {
            try {
                j jVar = this.zzf;
                zzee zzeeVar = jVar.d;
                if (zzeeVar == null) {
                    jVar.a.b().q().c("Failed to get user properties; not connected to service", this.zza, this.zzb);
                    this.zzf.a.N().D(this.zze, bundle2);
                    return;
                }
                wd8.l(this.zzc);
                List<zzlc> listZzh = zzeeVar.zzh(this.zza, this.zzb, this.zzd, this.zzc);
                bundle = new Bundle();
                if (listZzh != null) {
                    for (zzlc zzlcVar : listZzh) {
                        String str = zzlcVar.zze;
                        if (str != null) {
                            bundle.putString(zzlcVar.zzb, str);
                        } else {
                            Long l = zzlcVar.zzd;
                            if (l != null) {
                                bundle.putLong(zzlcVar.zzb, l.longValue());
                            } else {
                                Double d = zzlcVar.zzg;
                                if (d != null) {
                                    bundle.putDouble(zzlcVar.zzb, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    this.zzf.D();
                    this.zzf.a.N().D(this.zze, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    this.zzf.a.b().q().c("Failed to get user properties; remote exception", this.zza, e);
                    this.zzf.a.N().D(this.zze, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                this.zzf.a.N().D(this.zze, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            bundle = bundle2;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            this.zzf.a.N().D(this.zze, bundle2);
            throw th;
        }
    }
}
