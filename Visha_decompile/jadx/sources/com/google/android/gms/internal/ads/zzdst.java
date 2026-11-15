package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;

final class zzdst extends zzbwj {
    final s4 zza;

    public zzdst(s4 s4Var) {
        this.zza = s4Var;
    }

    @Override
    public final void zze(int i) throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.m(s4Var.a, i);
    }

    @Override
    public final void zzf(zze zzeVar) throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.m(s4Var.a, zzeVar.zza);
    }

    @Override
    public final void zzg() throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.p(s4Var.a);
    }
}
