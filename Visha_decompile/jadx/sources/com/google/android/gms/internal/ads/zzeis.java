package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbn;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzcs;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzee;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.enh;
import defpackage.k4h;
import defpackage.knh;
import defpackage.smg;
import defpackage.srf;
import defpackage.wd8;
import java.util.Collections;

public final class zzeis extends com.google.android.gms.ads.internal.client.zzbw {
    private final Context zza;
    private final zzbk zzb;
    private final enh zzc;
    private final srf zzd;
    private final ViewGroup zze;
    private final smg zzf;

    public zzeis(Context context, @Nullable zzbk zzbkVar, enh enhVar, srf srfVar, smg smgVar) {
        this.zza = context;
        this.zzb = zzbkVar;
        this.zzc = enhVar;
        this.zzd = srfVar;
        this.zzf = smgVar;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.removeAllViews();
        View viewK = srfVar.k();
        zzv.zzq();
        frameLayout.addView(viewK, new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setMinimumHeight(zzg().zzc);
        frameLayout.setMinimumWidth(zzg().zzf);
        this.zze = frameLayout;
    }

    @Override
    public final void zzA() throws RemoteException {
        this.zzd.o();
    }

    @Override
    public final void zzB() throws RemoteException {
        wd8.e("destroy must be called on the main UI thread.");
        this.zzd.d().H(null);
    }

    @Override
    public final void zzC(zzbh zzbhVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setAdClickListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final void zzD(zzbk zzbkVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setAdListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final void zzE(zzcb zzcbVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setAdMetadataListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final void zzF(com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        wd8.e("setAdSize must be called on the main UI thread.");
        srf srfVar = this.zzd;
        if (srfVar != null) {
            srfVar.p(this.zze, zzrVar);
        }
    }

    @Override
    public final void zzG(zzcl zzclVar) throws RemoteException {
        k4h k4hVar = this.zzc.c;
        if (k4hVar != null) {
            k4hVar.s(zzclVar);
        }
    }

    @Override
    public final void zzH(zzbad zzbadVar) throws RemoteException {
    }

    @Override
    public final void zzI(zzx zzxVar) throws RemoteException {
    }

    @Override
    public final void zzJ(zzcs zzcsVar) {
    }

    @Override
    public final void zzK(zzee zzeeVar) throws RemoteException {
    }

    @Override
    public final void zzL(boolean z) throws RemoteException {
    }

    @Override
    public final void zzM(zzbth zzbthVar) throws RemoteException {
    }

    @Override
    public final void zzN(boolean z) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setManualImpressionsEnabled is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final void zzO(zzbdd zzbddVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setOnCustomRenderedAdLoadedListener is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final void zzP(zzdq zzdqVar) {
        if (!((Boolean) zzbd.zzc().b(cye.Gb)).booleanValue()) {
            int i = zze.zza;
            zzo.zzi("setOnPaidEventListener is not supported in Ad Manager AdView returned by AdLoader.");
            return;
        }
        k4h k4hVar = this.zzc.c;
        if (k4hVar != null) {
            try {
                if (!zzdqVar.zzf()) {
                    this.zzf.e();
                }
            } catch (RemoteException e) {
                int i2 = zze.zza;
                zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
            }
            k4hVar.q(zzdqVar);
        }
    }

    @Override
    public final void zzQ(zzbtk zzbtkVar, String str) throws RemoteException {
    }

    @Override
    public final void zzR(String str) throws RemoteException {
    }

    @Override
    public final void zzS(zzbvq zzbvqVar) throws RemoteException {
    }

    @Override
    public final void zzT(String str) throws RemoteException {
    }

    @Override
    public final void zzU(zzfw zzfwVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setVideoOptions is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final void zzX() throws RemoteException {
    }

    @Override
    public final boolean zzY() throws RemoteException {
        srf srfVar = this.zzd;
        return srfVar != null && srfVar.h();
    }

    @Override
    public final boolean zzZ() throws RemoteException {
        return false;
    }

    @Override
    public final boolean zzaa() throws RemoteException {
        return false;
    }

    @Override
    public final boolean zzab(zzm zzmVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("loadAd is not supported for an Ad Manager AdView returned from AdLoader.");
        return false;
    }

    @Override
    public final void zzac(zzcp zzcpVar) throws RemoteException {
        int i = zze.zza;
        zzo.zzi("setCorrelationIdProvider is not supported in Ad Manager AdView returned by AdLoader.");
    }

    @Override
    public final Bundle zzd() throws RemoteException {
        int i = zze.zza;
        zzo.zzi("getAdMetadata is not supported in Ad Manager AdView returned by AdLoader.");
        return new Bundle();
    }

    @Override
    public final com.google.android.gms.ads.internal.client.zzr zzg() {
        wd8.e("getAdSize must be called on the main UI thread.");
        return knh.a(this.zza, Collections.singletonList(this.zzd.m()));
    }

    @Override
    public final zzbk zzi() throws RemoteException {
        return this.zzb;
    }

    @Override
    public final zzcl zzj() throws RemoteException {
        return this.zzc.n;
    }

    @Override
    public final zzdx zzk() {
        return this.zzd.c();
    }

    @Override
    public final zzea zzl() throws RemoteException {
        return this.zzd.l();
    }

    @Override
    public final IObjectWrapper zzn() throws RemoteException {
        return ObjectWrapper.wrap(this.zze);
    }

    @Override
    public final String zzr() throws RemoteException {
        return this.zzc.f;
    }

    @Override
    @Nullable
    public final String zzs() throws RemoteException {
        srf srfVar = this.zzd;
        if (srfVar.c() != null) {
            return srfVar.c().zzg();
        }
        return null;
    }

    @Override
    @Nullable
    public final String zzt() throws RemoteException {
        srf srfVar = this.zzd;
        if (srfVar.c() != null) {
            return srfVar.c().zzg();
        }
        return null;
    }

    @Override
    public final void zzx() throws RemoteException {
        wd8.e("destroy must be called on the main UI thread.");
        this.zzd.a();
    }

    @Override
    public final void zzy(zzm zzmVar, zzbn zzbnVar) {
    }

    @Override
    public final void zzz() throws RemoteException {
        wd8.e("destroy must be called on the main UI thread.");
        this.zzd.d().G(null);
    }
}
