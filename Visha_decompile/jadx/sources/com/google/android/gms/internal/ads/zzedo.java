package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.nxg;
import defpackage.pyg;

final class zzedo extends zzbqk {
    final d5 zza;
    private final nxg zzb;

    public zzedo(d5 d5Var, nxg nxgVar, pyg pygVar) {
        this.zza = d5Var;
        this.zzb = nxgVar;
    }

    @Override
    public final void zze(String str) throws RemoteException {
        ((zzedw) this.zzb.c).zzi(0, str);
    }

    @Override
    public final void zzf(zze zzeVar) throws RemoteException {
        ((zzedw) this.zzb.c).zzh(zzeVar);
    }

    @Override
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zza.c = (View) ObjectWrapper.unwrap(iObjectWrapper);
        ((zzedw) this.zzb.c).zzo();
    }

    @Override
    public final void zzh(zzbph zzbphVar) throws RemoteException {
        this.zza.d = zzbphVar;
        ((zzedw) this.zzb.c).zzo();
    }
}
