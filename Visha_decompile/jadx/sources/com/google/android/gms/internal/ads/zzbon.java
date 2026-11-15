package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.we;
import java.util.List;
import java.util.Map;

public final class zzbon extends zzcgg {
    private final we zza;

    public zzbon(we weVar) {
        this.zza = weVar;
    }

    @Override
    public final int zzb(String str) throws RemoteException {
        return this.zza.l(str);
    }

    @Override
    public final long zzc() throws RemoteException {
        return this.zza.d();
    }

    @Override
    public final Bundle zzd(Bundle bundle) throws RemoteException {
        return this.zza.p(bundle);
    }

    @Override
    public final String zze() throws RemoteException {
        return this.zza.e();
    }

    @Override
    public final String zzf() throws RemoteException {
        return this.zza.f();
    }

    @Override
    public final String zzg() throws RemoteException {
        return this.zza.h();
    }

    @Override
    public final String zzh() throws RemoteException {
        return this.zza.i();
    }

    @Override
    public final String zzi() throws RemoteException {
        return this.zza.j();
    }

    @Override
    public final List zzj(String str, String str2) throws RemoteException {
        return this.zza.g(str, str2);
    }

    @Override
    public final Map zzk(String str, String str2, boolean z) throws RemoteException {
        return this.zza.m(str, str2, z);
    }

    @Override
    public final void zzl(String str) throws RemoteException {
        this.zza.a(str);
    }

    @Override
    public final void zzm(String str, String str2, Bundle bundle) throws RemoteException {
        this.zza.b(str, str2, bundle);
    }

    @Override
    public final void zzn(String str) throws RemoteException {
        this.zza.c(str);
    }

    @Override
    public final void zzo(String str, String str2, Bundle bundle) throws RemoteException {
        this.zza.n(str, str2, bundle);
    }

    @Override
    public final void zzp(Bundle bundle) throws RemoteException {
        this.zza.o(bundle);
    }

    @Override
    public final void zzq(Bundle bundle) throws RemoteException {
        this.zza.q(bundle);
    }

    @Override
    public final void zzr(Bundle bundle) throws RemoteException {
        this.zza.r(bundle);
    }

    @Override
    public final void zzs(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.zza.s(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }

    @Override
    public final void zzt(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.zza.t(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }
}
