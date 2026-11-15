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

public final class zzdly extends zzbgj {

    @Nullable
    private final String zza;
    private final zcg zzb;
    private final ddg zzc;

    public zzdly(@Nullable String str, zcg zcgVar, ddg ddgVar) {
        this.zza = str;
        this.zzb = zcgVar;
        this.zzc = ddgVar;
    }

    @Override
    public final Bundle zzb() throws RemoteException {
        return this.zzc.Q();
    }

    @Override
    public final zzea zzc() throws RemoteException {
        return this.zzc.W();
    }

    @Override
    public final zzbfm zzd() throws RemoteException {
        return this.zzc.Y();
    }

    @Override
    public final zzbft zze() throws RemoteException {
        return this.zzc.b0();
    }

    @Override
    public final IObjectWrapper zzf() throws RemoteException {
        return this.zzc.i0();
    }

    @Override
    public final IObjectWrapper zzg() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override
    public final String zzh() throws RemoteException {
        return this.zzc.k0();
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
    public final List zzm() throws RemoteException {
        return this.zzc.g();
    }

    @Override
    public final void zzn() throws RemoteException {
        this.zzb.a();
    }

    @Override
    public final void zzo(Bundle bundle) throws RemoteException {
        this.zzb.o(bundle);
    }

    @Override
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zzb.u(bundle);
    }

    @Override
    public final boolean zzq(Bundle bundle) throws RemoteException {
        return this.zzb.H(bundle);
    }
}
