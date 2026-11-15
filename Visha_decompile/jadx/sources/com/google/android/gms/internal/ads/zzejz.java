package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
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
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.bkh;
import defpackage.cye;
import defpackage.dkh;
import defpackage.doh;
import defpackage.fre;
import defpackage.goh;
import defpackage.hlh;
import defpackage.k4h;
import defpackage.r4h;
import defpackage.s9g;
import defpackage.smg;
import defpackage.wd8;
import defpackage.xze;

public final class zzejz extends com.google.android.gms.ads.internal.client.zzbw {
    private final com.google.android.gms.ads.internal.client.zzr zza;
    private final Context zzb;
    private final dkh zzc;
    private final String zzd;
    private final VersionInfoParcel zze;
    private final k4h zzf;
    private final hlh zzg;
    private final fre zzh;
    private final smg zzi;

    @Nullable
    private s9g zzj;
    private boolean zzk = ((Boolean) zzbd.zzc().b(cye.S0)).booleanValue();

    public zzejz(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, dkh dkhVar, k4h k4hVar, hlh hlhVar, VersionInfoParcel versionInfoParcel, fre freVar, smg smgVar) {
        this.zza = zzrVar;
        this.zzd = str;
        this.zzb = context;
        this.zzc = dkhVar;
        this.zzf = k4hVar;
        this.zzg = hlhVar;
        this.zze = versionInfoParcel;
        this.zzh = freVar;
        this.zzi = smgVar;
    }

    private final synchronized boolean zze() {
        s9g s9gVar = this.zzj;
        return (s9gVar == null || s9gVar.i()) ? false : true;
    }

    @Override
    public final void zzA() {
    }

    @Override
    public final synchronized void zzB() {
        wd8.e("resume must be called on the main UI thread.");
        s9g s9gVar = this.zzj;
        if (s9gVar != null) {
            s9gVar.d().H(null);
        }
    }

    @Override
    public final void zzC(zzbh zzbhVar) {
    }

    @Override
    public final void zzD(zzbk zzbkVar) {
        wd8.e("setAdListener must be called on the main UI thread.");
        this.zzf.o(zzbkVar);
    }

    @Override
    public final void zzE(zzcb zzcbVar) {
        wd8.e("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override
    public final void zzF(com.google.android.gms.ads.internal.client.zzr zzrVar) {
    }

    @Override
    public final void zzG(zzcl zzclVar) {
        wd8.e("setAppEventListener must be called on the main UI thread.");
        this.zzf.s(zzclVar);
    }

    @Override
    public final void zzH(zzbad zzbadVar) {
    }

    @Override
    public final void zzI(zzx zzxVar) {
    }

    @Override
    public final void zzJ(zzcs zzcsVar) {
        this.zzf.t(zzcsVar);
    }

    @Override
    public final void zzK(zzee zzeeVar) {
    }

    @Override
    public final synchronized void zzL(boolean z) {
        wd8.e("setImmersiveMode must be called on the main UI thread.");
        this.zzk = z;
    }

    @Override
    public final void zzM(zzbth zzbthVar) {
    }

    @Override
    public final void zzN(boolean z) {
    }

    @Override
    public final synchronized void zzO(zzbdd zzbddVar) {
        wd8.e("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzc.h(zzbddVar);
    }

    @Override
    public final void zzP(zzdq zzdqVar) {
        wd8.e("setPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdqVar.zzf()) {
                this.zzi.e();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzf.q(zzdqVar);
    }

    @Override
    public final void zzQ(zzbtk zzbtkVar, String str) {
    }

    @Override
    public final void zzR(String str) {
    }

    @Override
    public final void zzS(zzbvq zzbvqVar) {
        this.zzg.p(zzbvqVar);
    }

    @Override
    public final void zzT(String str) {
    }

    @Override
    public final void zzU(zzfw zzfwVar) {
    }

    @Override
    public final synchronized void zzW(IObjectWrapper iObjectWrapper) {
        if (this.zzj == null) {
            int i = zze.zza;
            zzo.zzj("Interstitial can not be shown before loaded.");
            this.zzf.h(goh.d(9, null, null));
        } else {
            if (((Boolean) zzbd.zzc().b(cye.a3)).booleanValue()) {
                this.zzh.c().zzn(new Throwable().getStackTrace());
            }
            this.zzj.j(this.zzk, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public final synchronized void zzX() {
        wd8.e("showInterstitial must be called on the main UI thread.");
        if (this.zzj == null) {
            int i = zze.zza;
            zzo.zzj("Interstitial can not be shown before loaded.");
            this.zzf.h(goh.d(9, null, null));
        } else {
            if (((Boolean) zzbd.zzc().b(cye.a3)).booleanValue()) {
                this.zzh.c().zzn(new Throwable().getStackTrace());
            }
            this.zzj.j(this.zzk, null);
        }
    }

    @Override
    public final synchronized boolean zzY() {
        return false;
    }

    @Override
    public final synchronized boolean zzZ() {
        return this.zzc.zza();
    }

    @Override
    public final synchronized boolean zzaa() {
        wd8.e("isLoaded must be called on the main UI thread.");
        return zze();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    @Override
    public final synchronized boolean zzab(zzm zzmVar) {
        boolean z;
        try {
            if (!zzmVar.zzb()) {
                if (((Boolean) xze.i.e()).booleanValue()) {
                    if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (this.zze.clientJarVersion < ((Integer) zzbd.zzc().b(cye.ob)).intValue() || !z) {
                    wd8.e("loadAd must be called on the main UI thread.");
                }
            }
            zzv.zzq();
            Context context = this.zzb;
            if (com.google.android.gms.ads.internal.util.zzs.zzI(context) && zzmVar.zzs == null) {
                int i = zze.zza;
                zzo.zzg("Failed to load the ad because app ID is missing.");
                k4h k4hVar = this.zzf;
                if (k4hVar != null) {
                    k4hVar.A(goh.d(4, null, null));
                }
            } else if (!zze()) {
                doh.a(context, zzmVar.zzf);
                this.zzj = null;
                return this.zzc.a(zzmVar, this.zzd, new bkh(this.zza), new r4h(this));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzac(zzcp zzcpVar) {
    }

    @Override
    public final Bundle zzd() {
        wd8.e("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override
    public final com.google.android.gms.ads.internal.client.zzr zzg() {
        return null;
    }

    @Override
    public final zzbk zzi() {
        return this.zzf.k();
    }

    @Override
    public final zzcl zzj() {
        return this.zzf.n();
    }

    @Override
    @Nullable
    public final synchronized zzdx zzk() {
        s9g s9gVar;
        if (((Boolean) zzbd.zzc().b(cye.J6)).booleanValue() && (s9gVar = this.zzj) != null) {
            return s9gVar.c();
        }
        return null;
    }

    @Override
    public final zzea zzl() {
        return null;
    }

    @Override
    public final IObjectWrapper zzn() {
        return null;
    }

    @Override
    public final synchronized String zzr() {
        return this.zzd;
    }

    @Override
    @Nullable
    public final synchronized String zzs() {
        s9g s9gVar = this.zzj;
        if (s9gVar == null || s9gVar.c() == null) {
            return null;
        }
        return s9gVar.c().zzg();
    }

    @Override
    @Nullable
    public final synchronized String zzt() {
        s9g s9gVar = this.zzj;
        if (s9gVar == null || s9gVar.c() == null) {
            return null;
        }
        return s9gVar.c().zzg();
    }

    @Override
    public final synchronized void zzx() {
        wd8.e("destroy must be called on the main UI thread.");
        s9g s9gVar = this.zzj;
        if (s9gVar != null) {
            s9gVar.d().F(null);
        }
    }

    @Override
    public final void zzy(zzm zzmVar, zzbn zzbnVar) {
        this.zzf.p(zzbnVar);
        zzab(zzmVar);
    }

    @Override
    public final synchronized void zzz() {
        wd8.e("pause must be called on the main UI thread.");
        s9g s9gVar = this.zzj;
        if (s9gVar != null) {
            s9gVar.d().G(null);
        }
    }
}
