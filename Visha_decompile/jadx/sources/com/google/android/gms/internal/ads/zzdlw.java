package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.ddg;
import defpackage.zcg;
import java.util.List;

public final class zzdlw extends zzbgh {

    @Nullable
    private final String zza;
    private final zcg zzb;
    private final ddg zzc;

    public zzdlw(@Nullable String str, zcg zcgVar, ddg ddgVar) {
        this.zza = str;
        this.zzb = zcgVar;
        this.zzc = ddgVar;
    }

    @Override
    public final double zzb() throws RemoteException {
        return this.zzc.A();
    }

    @Override
    public final Bundle zzc() throws RemoteException {
        return this.zzc.Q();
    }

    @Override
    public final zzea zzd() throws RemoteException {
        return this.zzc.W();
    }

    @Override
    public final zzbfm zze() throws RemoteException {
        return this.zzc.Y();
    }

    @Override
    public final zzbft zzf() throws RemoteException {
        return this.zzc.a0();
    }

    @Override
    public final IObjectWrapper zzg() throws RemoteException {
        return this.zzc.i0();
    }

    @Override
    public final IObjectWrapper zzh() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override
    public final String zzi() throws RemoteException {
        return this.zzc.l0();
    }

    @Override
    public final String zzj() throws RemoteException {
        return this.zzc.m0();
    }

    @Override
    public final String zzk() throws RemoteException {
        return this.zzc.b();
    }

    @Override
    public final String zzl() throws RemoteException {
        return this.zza;
    }

    @Override
    public final String zzm() throws RemoteException {
        return this.zzc.d();
    }

    @Override
    public final String zzn() throws RemoteException {
        return this.zzc.e();
    }

    @Override
    public final List zzo() throws RemoteException {
        return this.zzc.g();
    }

    @Override
    public final void zzp() throws RemoteException {
        this.zzb.a();
    }

    @Override
    public final void zzq(Bundle bundle) throws RemoteException {
        this.zzb.o(bundle);
    }

    @Override
    public final void zzr(Bundle bundle) throws RemoteException {
        this.zzb.u(bundle);
    }

    @Override
    public final boolean zzs(Bundle bundle) throws RemoteException {
        return this.zzb.H(bundle);
    }
}
