package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbj;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.yng;

final class zzdsq extends zzbj {
    final yng zza;
    final r4 zzb;

    public zzdsq(r4 r4Var, yng yngVar) {
        this.zza = yngVar;
        this.zzb = r4Var;
    }

    @Override
    public final void zzc() throws RemoteException {
        this.zza.b(this.zzb.a);
    }

    @Override
    public final void zzd() throws RemoteException {
        this.zza.c(this.zzb.a);
    }

    @Override
    public final void zze(int i) throws RemoteException {
        this.zza.d(this.zzb.a, i);
    }

    @Override
    public final void zzf(zze zzeVar) throws RemoteException {
        this.zza.d(this.zzb.a, zzeVar.zza);
    }

    @Override
    public final void zzg() {
    }

    @Override
    public final void zzh() {
    }

    @Override
    public final void zzi() throws RemoteException {
        this.zza.e(this.zzb.a);
    }

    @Override
    public final void zzj() throws RemoteException {
        this.zza.g(this.zzb.a);
    }

    @Override
    public final void zzk() {
    }
}
