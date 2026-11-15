package com.google.android.gms.internal.ads;

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
import defpackage.cnh;
import defpackage.cye;
import defpackage.d2g;
import defpackage.doh;
import defpackage.goh;
import defpackage.k4h;
import defpackage.knh;
import defpackage.m3h;
import defpackage.pih;
import defpackage.smg;
import defpackage.srf;
import defpackage.wd8;
import defpackage.xze;
import java.util.Collections;
import java.util.concurrent.ExecutionException;

public final class zzeix extends com.google.android.gms.ads.internal.client.zzbw implements d2g {
    private final Context zza;
    private final pih zzb;
    private final String zzc;
    private final k4h zzd;
    private com.google.android.gms.ads.internal.client.zzr zze;
    private final cnh zzf;
    private final VersionInfoParcel zzg;
    private final smg zzh;

    @Nullable
    private srf zzi;

    public zzeix(Context context, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, pih pihVar, k4h k4hVar, VersionInfoParcel versionInfoParcel, smg smgVar) {
        this.zza = context;
        this.zzb = pihVar;
        this.zze = zzrVar;
        this.zzc = str;
        this.zzd = k4hVar;
        this.zzf = pihVar.e();
        this.zzg = versionInfoParcel;
        this.zzh = smgVar;
        pihVar.n(this);
    }

    private final synchronized void zzf(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        cnh cnhVar = this.zzf;
        cnhVar.O(zzrVar);
        cnhVar.U(this.zze.zzn);
    }

    private final synchronized boolean zzh(zzm zzmVar) throws RemoteException {
        try {
            if (zzm()) {
                wd8.e("loadAd must be called on the main UI thread.");
            }
            zzv.zzq();
            Context context = this.zza;
            if (!com.google.android.gms.ads.internal.util.zzs.zzI(context) || zzmVar.zzs != null) {
                doh.a(context, zzmVar.zzf);
                return this.zzb.a(zzmVar, this.zzc, null, new m3h(this));
            }
            int i = zze.zza;
            zzo.zzg("Failed to load the ad because app ID is missing.");
            k4h k4hVar = this.zzd;
            if (k4hVar != null) {
                k4hVar.A(goh.d(4, null, null));
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    private final boolean zzm() {
        boolean z;
        if (((Boolean) xze.f.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return this.zzg.clientJarVersion < ((Integer) zzbd.zzc().b(cye.ob)).intValue() || !z;
    }

    @Override
    public final synchronized void zzA() {
        wd8.e("recordManualImpression must be called on the main UI thread.");
        srf srfVar = this.zzi;
        if (srfVar != null) {
            srfVar.o();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003a A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:13:0x003f, B:15:0x0043, B:12:0x003a), top: B:22:0x0001 }] */
    @Override
    public final synchronized void zzB() {
        try {
            if (((Boolean) xze.h.e()).booleanValue()) {
                if (((Boolean) zzbd.zzc().b(cye.jb)).booleanValue()) {
                    if (this.zzg.clientJarVersion < ((Integer) zzbd.zzc().b(cye.pb)).intValue()) {
                        wd8.e("resume must be called on the main UI thread.");
                    }
                } else {
                    wd8.e("resume must be called on the main UI thread.");
                }
            } else {
                wd8.e("resume must be called on the main UI thread.");
            }
            srf srfVar = this.zzi;
            if (srfVar != null) {
                srfVar.d().H(null);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzC(zzbh zzbhVar) {
        if (zzm()) {
            wd8.e("setAdListener must be called on the main UI thread.");
        }
        this.zzb.m(zzbhVar);
    }

    @Override
    public final void zzD(zzbk zzbkVar) {
        if (zzm()) {
            wd8.e("setAdListener must be called on the main UI thread.");
        }
        this.zzd.o(zzbkVar);
    }

    @Override
    public final void zzE(zzcb zzcbVar) {
        wd8.e("setAdMetadataListener must be called on the main UI thread.");
    }

    @Override
    public final synchronized void zzF(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        wd8.e("setAdSize must be called on the main UI thread.");
        this.zzf.O(zzrVar);
        this.zze = zzrVar;
        srf srfVar = this.zzi;
        if (srfVar != null) {
            srfVar.p(this.zzb.b(), zzrVar);
        }
    }

    @Override
    public final void zzG(zzcl zzclVar) {
        if (zzm()) {
            wd8.e("setAppEventListener must be called on the main UI thread.");
        }
        this.zzd.s(zzclVar);
    }

    @Override
    public final void zzH(zzbad zzbadVar) {
    }

    @Override
    public final void zzI(zzx zzxVar) {
    }

    @Override
    public final void zzJ(zzcs zzcsVar) {
    }

    @Override
    public final void zzK(zzee zzeeVar) {
    }

    @Override
    public final void zzL(boolean z) {
    }

    @Override
    public final void zzM(zzbth zzbthVar) {
    }

    @Override
    public final synchronized void zzN(boolean z) {
        try {
            if (zzm()) {
                wd8.e("setManualImpressionsEnabled must be called from the main thread.");
            }
            this.zzf.b(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzO(zzbdd zzbddVar) {
        wd8.e("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzb.o(zzbddVar);
    }

    @Override
    public final void zzP(zzdq zzdqVar) {
        if (zzm()) {
            wd8.e("setPaidEventListener must be called on the main UI thread.");
        }
        try {
            if (!zzdqVar.zzf()) {
                this.zzh.e();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzd.q(zzdqVar);
    }

    @Override
    public final void zzQ(zzbtk zzbtkVar, String str) {
    }

    @Override
    public final void zzR(String str) {
    }

    @Override
    public final void zzS(zzbvq zzbvqVar) {
    }

    @Override
    public final void zzT(String str) {
    }

    @Override
    public final synchronized void zzU(zzfw zzfwVar) {
        try {
            if (zzm()) {
                wd8.e("setVideoOptions must be called on the main UI thread.");
            }
            this.zzf.i(zzfwVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final void zzX() {
    }

    @Override
    public final synchronized boolean zzY() {
        srf srfVar = this.zzi;
        return srfVar != null && srfVar.h();
    }

    @Override
    public final synchronized boolean zzZ() {
        return this.zzb.zza();
    }

    @Override
    public final synchronized void zza() {
        try {
            if (!this.zzb.r()) {
                this.zzb.k();
                return;
            }
            cnh cnhVar = this.zzf;
            com.google.android.gms.ads.internal.client.zzr zzrVarD = cnhVar.D();
            if (this.zzi != null && cnhVar.t()) {
                zzrVarD = knh.a(this.zza, Collections.singletonList(this.zzi.n()));
            }
            zzf(zzrVarD);
            cnhVar.T(true);
            try {
                zzh(cnhVar.B());
            } catch (RemoteException unused) {
                int i = zze.zza;
                zzo.zzj("Failed to refresh the banner ad.");
            }
            this.zzf.T(false);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final boolean zzaa() {
        return false;
    }

    @Override
    public final synchronized boolean zzab(zzm zzmVar) throws RemoteException {
        zzf(this.zze);
        return zzh(zzmVar);
    }

    @Override
    public final synchronized void zzac(zzcp zzcpVar) {
        wd8.e("setCorrelationIdProvider must be called on the main UI thread");
        this.zzf.v(zzcpVar);
    }

    @Override
    public final synchronized void zzb() throws ExecutionException, InterruptedException {
        pih pihVar = this.zzb;
        if (pihVar.r()) {
            pihVar.p();
        } else {
            pihVar.l();
        }
    }

    @Override
    public final Bundle zzd() {
        wd8.e("getAdMetadata must be called on the main UI thread.");
        return new Bundle();
    }

    @Override
    public final synchronized com.google.android.gms.ads.internal.client.zzr zzg() {
        wd8.e("getAdSize must be called on the main UI thread.");
        srf srfVar = this.zzi;
        if (srfVar != null) {
            return knh.a(this.zza, Collections.singletonList(srfVar.m()));
        }
        return this.zzf.D();
    }

    @Override
    public final zzbk zzi() {
        return this.zzd.k();
    }

    @Override
    public final zzcl zzj() {
        return this.zzd.n();
    }

    @Override
    @Nullable
    public final synchronized zzdx zzk() {
        srf srfVar;
        if (((Boolean) zzbd.zzc().b(cye.J6)).booleanValue() && (srfVar = this.zzi) != null) {
            return srfVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public final synchronized zzea zzl() {
        wd8.e("getVideoController must be called from the main thread.");
        srf srfVar = this.zzi;
        if (srfVar == null) {
            return null;
        }
        return srfVar.l();
    }

    @Override
    public final IObjectWrapper zzn() {
        if (zzm()) {
            wd8.e("getAdFrame must be called on the main UI thread.");
        }
        return ObjectWrapper.wrap(this.zzb.b());
    }

    @Override
    public final synchronized String zzr() {
        return this.zzc;
    }

    @Override
    @Nullable
    public final synchronized String zzs() {
        srf srfVar = this.zzi;
        if (srfVar == null || srfVar.c() == null) {
            return null;
        }
        return srfVar.c().zzg();
    }

    @Override
    @Nullable
    public final synchronized String zzt() {
        srf srfVar = this.zzi;
        if (srfVar == null || srfVar.c() == null) {
            return null;
        }
        return srfVar.c().zzg();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003a A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:13:0x003f, B:15:0x0043, B:12:0x003a), top: B:22:0x0001 }] */
    @Override
    public final synchronized void zzx() {
        try {
            if (((Boolean) xze.e.e()).booleanValue()) {
                if (((Boolean) zzbd.zzc().b(cye.kb)).booleanValue()) {
                    if (this.zzg.clientJarVersion < ((Integer) zzbd.zzc().b(cye.pb)).intValue()) {
                        wd8.e("destroy must be called on the main UI thread.");
                    }
                } else {
                    wd8.e("destroy must be called on the main UI thread.");
                }
            } else {
                wd8.e("destroy must be called on the main UI thread.");
            }
            srf srfVar = this.zzi;
            if (srfVar != null) {
                srfVar.a();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void zzy(zzm zzmVar, zzbn zzbnVar) {
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003a A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0021, B:13:0x003f, B:15:0x0043, B:12:0x003a), top: B:22:0x0001 }] */
    @Override
    public final synchronized void zzz() {
        try {
            if (((Boolean) xze.g.e()).booleanValue()) {
                if (((Boolean) zzbd.zzc().b(cye.lb)).booleanValue()) {
                    if (this.zzg.clientJarVersion < ((Integer) zzbd.zzc().b(cye.pb)).intValue()) {
                        wd8.e("pause must be called on the main UI thread.");
                    }
                } else {
                    wd8.e("pause must be called on the main UI thread.");
                }
            } else {
                wd8.e("pause must be called on the main UI thread.");
            }
            srf srfVar = this.zzi;
            if (srfVar != null) {
                srfVar.d().G(null);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
