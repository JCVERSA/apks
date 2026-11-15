package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;

final class zzdsu extends zzbwf {
    final s4 zza;

    public zzdsu(s4 s4Var) {
        this.zza = s4Var;
    }

    @Override
    public final void zze() throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.j(s4Var.a);
    }

    @Override
    public final void zzf() throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.o(s4Var.a);
    }

    @Override
    public final void zzg() throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.k(s4Var.a);
    }

    @Override
    public final void zzh(int i) throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.n(s4Var.a, i);
    }

    @Override
    public final void zzi(zze zzeVar) throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.n(s4Var.a, zzeVar.zza);
    }

    @Override
    public final void zzj() throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.r(s4Var.a);
    }

    @Override
    public final void zzk(zzbwa zzbwaVar) throws RemoteException {
        s4 s4Var = this.zza;
        s4Var.b.l(s4Var.a, zzbwaVar);
    }
}
