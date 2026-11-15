package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.nxg;
import defpackage.uzg;

final class zzeey extends zzbqq {
    final f5 zza;
    private final nxg zzb;

    public zzeey(f5 f5Var, nxg nxgVar, uzg uzgVar) {
        this.zza = f5Var;
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
    public final void zzg(zzbpn zzbpnVar) throws RemoteException {
        this.zza.c = zzbpnVar;
        ((zzedw) this.zzb.c).zzo();
    }
}
