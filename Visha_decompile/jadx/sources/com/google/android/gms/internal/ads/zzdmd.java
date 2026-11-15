package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdc;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.ddg;
import defpackage.smg;
import defpackage.zcg;
import java.util.Collections;
import java.util.List;

public final class zzdmd extends zzbhm {

    @Nullable
    private final String zza;
    private final zcg zzb;
    private final ddg zzc;
    private final smg zzd;

    public zzdmd(@Nullable String str, zcg zcgVar, ddg ddgVar, smg smgVar) {
        this.zza = str;
        this.zzb = zcgVar;
        this.zzc = ddgVar;
        this.zzd = smgVar;
    }

    @Override
    public final void zzA() {
        this.zzb.p();
    }

    @Override
    public final void zzB(Bundle bundle) {
        if (((Boolean) zzbd.zzc().b(cye.Zc)).booleanValue()) {
            this.zzb.q(bundle);
        }
    }

    @Override
    public final void zzC(Bundle bundle) throws RemoteException {
        this.zzb.u(bundle);
    }

    @Override
    public final void zzD() {
        this.zzb.w();
    }

    @Override
    public final void zzE(zzdc zzdcVar) throws RemoteException {
        this.zzb.x(zzdcVar);
    }

    @Override
    public final void zzF(zzdq zzdqVar) throws RemoteException {
        try {
            if (!zzdqVar.zzf()) {
                this.zzd.e();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzb.y(zzdqVar);
    }

    @Override
    public final void zzG(zzbhk zzbhkVar) throws RemoteException {
        this.zzb.z(zzbhkVar);
    }

    @Override
    public final boolean zzH() {
        return this.zzb.E();
    }

    @Override
    public final boolean zzI() throws RemoteException {
        ddg ddgVar = this.zzc;
        return (ddgVar.h().isEmpty() || ddgVar.X() == null) ? false : true;
    }

    @Override
    public final boolean zzJ(Bundle bundle) throws RemoteException {
        return this.zzb.H(bundle);
    }

    @Override
    public final double zze() throws RemoteException {
        return this.zzc.A();
    }

    @Override
    public final Bundle zzf() throws RemoteException {
        return this.zzc.Q();
    }

    @Override
    @Nullable
    public final zzdx zzg() throws RemoteException {
        if (((Boolean) zzbd.zzc().b(cye.J6)).booleanValue()) {
            return this.zzb.c();
        }
        return null;
    }

    @Override
    public final zzea zzh() throws RemoteException {
        return this.zzc.W();
    }

    @Override
    public final zzbfm zzi() throws RemoteException {
        return this.zzc.Y();
    }

    @Override
    public final zzbfq zzj() throws RemoteException {
        return this.zzb.P().a();
    }

    @Override
    public final zzbft zzk() throws RemoteException {
        return this.zzc.a0();
    }

    @Override
    public final IObjectWrapper zzl() throws RemoteException {
        return this.zzc.i0();
    }

    @Override
    public final IObjectWrapper zzm() throws RemoteException {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override
    public final String zzn() throws RemoteException {
        return this.zzc.k0();
    }

    @Override
    public final String zzo() throws RemoteException {
        return this.zzc.l0();
    }

    @Override
    public final String zzp() throws RemoteException {
        return this.zzc.m0();
    }

    @Override
    public final String zzq() throws RemoteException {
        return this.zzc.b();
    }

    @Override
    public final String zzr() throws RemoteException {
        return this.zza;
    }

    @Override
    public final String zzs() throws RemoteException {
        return this.zzc.d();
    }

    @Override
    public final String zzt() throws RemoteException {
        return this.zzc.e();
    }

    @Override
    public final List zzu() throws RemoteException {
        return this.zzc.g();
    }

    @Override
    public final List zzv() throws RemoteException {
        return zzI() ? this.zzc.h() : Collections.emptyList();
    }

    @Override
    public final void zzw() throws RemoteException {
        this.zzb.i();
    }

    @Override
    public final void zzx() throws RemoteException {
        this.zzb.a();
    }

    @Override
    public final void zzy(@Nullable zzdg zzdgVar) throws RemoteException {
        this.zzb.k(zzdgVar);
    }

    @Override
    public final void zzz(Bundle bundle) throws RemoteException {
        this.zzb.o(bundle);
    }
}
