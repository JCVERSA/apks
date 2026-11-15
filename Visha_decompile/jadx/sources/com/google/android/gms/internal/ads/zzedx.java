package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.e9g;
import defpackage.hmh;
import defpackage.nxg;
import defpackage.vmh;
import defpackage.w0g;
import defpackage.x0g;
import defpackage.x1h;
import java.util.concurrent.Executor;

public final class zzedx extends zzbvu implements x0g {
    private zzbvv zza;
    private w0g zzb;
    private e9g zzc;

    @Override
    public final synchronized void zza(w0g w0gVar) {
        this.zzb = w0gVar;
    }

    public final synchronized void zzc(zzbvv zzbvvVar) {
        this.zza = zzbvvVar;
    }

    public final synchronized void zzd(e9g e9gVar) {
        this.zzc = e9gVar;
    }

    @Override
    public final synchronized void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zzb.onAdClicked();
        }
    }

    @Override
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            zzbvvVar.zzf(iObjectWrapper);
        }
    }

    @Override
    public final synchronized void zzg(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        w0g w0gVar = this.zzb;
        if (w0gVar != null) {
            w0gVar.zza(i);
        }
    }

    @Override
    public final synchronized void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zzc.zzb();
        }
    }

    @Override
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        w0g w0gVar = this.zzb;
        if (w0gVar != null) {
            w0gVar.zzd();
        }
    }

    @Override
    public final synchronized void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zza.zzdp();
        }
    }

    @Override
    public final synchronized void zzk(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        e9g e9gVar = this.zzc;
        if (e9gVar != null) {
            nxg nxgVar = ((x1h) e9gVar).c;
            int i2 = zze.zza;
            zzo.zzj("Fail to initialize adapter ".concat(String.valueOf(nxgVar.a)));
        }
    }

    @Override
    public final synchronized void zzl(IObjectWrapper iObjectWrapper) throws RemoteException {
        e9g e9gVar = this.zzc;
        if (e9gVar != null) {
            Executor executor = ((x1h) e9gVar).d.b;
            final nxg nxgVar = ((x1h) e9gVar).c;
            final hmh hmhVar = ((x1h) e9gVar).b;
            final vmh vmhVar = ((x1h) e9gVar).a;
            final x1h x1hVar = (x1h) e9gVar;
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    h5 h5Var = x1hVar.d;
                    h5.e(vmhVar, hmhVar, nxgVar);
                }
            });
        }
    }

    @Override
    public final synchronized void zzm(IObjectWrapper iObjectWrapper, zzbvw zzbvwVar) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zzd.p(zzbvwVar);
        }
    }

    @Override
    public final synchronized void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zzd.p(null);
        }
    }

    @Override
    public final synchronized void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zzc.zze();
        }
    }

    @Override
    public final synchronized void zzp(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbvv zzbvvVar = this.zza;
        if (zzbvvVar != null) {
            ((zzehc) zzbvvVar).zzd.zzc();
        }
    }
}
