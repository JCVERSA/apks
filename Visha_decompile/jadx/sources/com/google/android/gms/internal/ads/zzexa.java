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
import defpackage.brf;
import defpackage.cye;
import defpackage.fih;
import defpackage.goh;
import defpackage.hih;
import defpackage.jih;
import defpackage.lkf;
import defpackage.mve;
import defpackage.nrf;
import defpackage.smg;
import defpackage.wd8;
import defpackage.xze;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzexa extends com.google.android.gms.ads.internal.client.zzbw implements com.google.android.gms.ads.internal.overlay.zzr, mve {

    @Nullable
    protected nrf zza;
    private final lkf zzb;
    private final Context zzc;
    private final String zze;
    private final hih zzf;
    private final fih zzg;
    private final VersionInfoParcel zzh;
    private final smg zzi;

    @Nullable
    private brf zzk;
    private AtomicBoolean zzd = new AtomicBoolean();
    private long zzj = -1;

    public zzexa(lkf lkfVar, Context context, String str, hih hihVar, fih fihVar, VersionInfoParcel versionInfoParcel, smg smgVar) {
        this.zzb = lkfVar;
        this.zzc = context;
        this.zze = str;
        this.zzf = hihVar;
        this.zzg = fihVar;
        this.zzh = versionInfoParcel;
        this.zzi = smgVar;
        fihVar.o(this);
    }

    public final synchronized void zzq(int i) {
        try {
            if (this.zzd.compareAndSet(false, true)) {
                this.zzg.k();
                brf brfVar = this.zzk;
                if (brfVar != null) {
                    zzv.zzb().e(brfVar);
                }
                if (this.zza != null) {
                    long jElapsedRealtime = -1;
                    if (this.zzj != -1) {
                        jElapsedRealtime = zzv.zzC().elapsedRealtime() - this.zzj;
                    }
                    this.zza.l(jElapsedRealtime, i);
                }
                zzx();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzA() {
    }

    @Override
    public final synchronized void zzB() {
        wd8.e("resume must be called on the main UI thread.");
    }

    @Override
    public final void zzC(zzbh zzbhVar) {
    }

    @Override
    public final void zzD(zzbk zzbkVar) {
    }

    @Override
    public final void zzE(zzcb zzcbVar) {
    }

    @Override
    public final synchronized void zzF(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        wd8.e("setAdSize must be called on the main UI thread.");
    }

    @Override
    public final void zzG(zzcl zzclVar) {
    }

    @Override
    public final void zzH(zzbad zzbadVar) {
        this.zzg.q(zzbadVar);
    }

    @Override
    public final void zzI(zzx zzxVar) {
        this.zzf.k(zzxVar);
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
    }

    @Override
    public final synchronized void zzO(zzbdd zzbddVar) {
    }

    @Override
    public final void zzP(zzdq zzdqVar) {
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
    }

    @Override
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final synchronized void zzX() {
    }

    @Override
    public final synchronized boolean zzY() {
        return false;
    }

    @Override
    public final synchronized boolean zzZ() {
        return this.zzf.zza();
    }

    @Override
    public final void zza() {
        zzq(3);
    }

    @Override
    public final boolean zzaa() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b  */
    @Override
    public final synchronized boolean zzab(zzm zzmVar) throws RemoteException {
        boolean z;
        try {
            if (!zzmVar.zzb()) {
                if (((Boolean) xze.d.e()).booleanValue()) {
                    if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (this.zzh.clientJarVersion < ((Integer) zzbd.zzc().b(cye.ob)).intValue() || !z) {
                    wd8.e("loadAd must be called on the main UI thread.");
                }
            }
            zzv.zzq();
            if (com.google.android.gms.ads.internal.util.zzs.zzI(this.zzc) && zzmVar.zzs == null) {
                int i = zze.zza;
                zzo.zzg("Failed to load the ad because app ID is missing.");
                this.zzg.A(goh.d(4, null, null));
                return false;
            }
            if (zzZ()) {
                return false;
            }
            this.zzd = new AtomicBoolean();
            return this.zzf.a(zzmVar, this.zze, new jih(this), new i5(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void zzac(zzcp zzcpVar) {
    }

    @Override
    public final Bundle zzd() {
        return new Bundle();
    }

    @Override
    public final void zzdE() {
    }

    @Override
    public final void zzdi() {
    }

    @Override
    public final void zzdo() {
    }

    @Override
    public final synchronized void zzdp() {
        if (this.zza != null) {
            this.zzj = zzv.zzC().elapsedRealtime();
            int i = this.zza.i();
            if (i > 0) {
                brf brfVar = new brf(this.zzb.c(), zzv.zzC());
                this.zzk = brfVar;
                brfVar.c(i, new Runnable() {
                    @Override
                    public final void run() {
                        zzexa zzexaVar = this.zza;
                        zzexaVar.zzb.b().execute(new Runnable() {
                            @Override
                            public final void run() {
                                this.zza.zzq(5);
                            }
                        });
                    }
                });
            }
        }
    }

    @Override
    public final synchronized void zzdr() {
        nrf nrfVar = this.zza;
        if (nrfVar != null) {
            nrfVar.l(zzv.zzC().elapsedRealtime() - this.zzj, 1);
        }
    }

    @Override
    public final void zzds(int i) {
        if (i == 0) {
            throw null;
        }
        int i2 = i - 1;
        if (i2 == 0) {
            zzq(2);
            return;
        }
        if (i2 == 1) {
            zzq(4);
        } else if (i2 != 2) {
            zzq(6);
        } else {
            zzq(3);
        }
    }

    @Override
    public final synchronized com.google.android.gms.ads.internal.client.zzr zzg() {
        return null;
    }

    @Override
    public final zzbk zzi() {
        return null;
    }

    @Override
    public final zzcl zzj() {
        return null;
    }

    @Override
    public final synchronized zzdx zzk() {
        return null;
    }

    @Override
    public final synchronized zzea zzl() {
        return null;
    }

    @Override
    public final IObjectWrapper zzn() {
        return null;
    }

    @Override
    public final synchronized String zzr() {
        return this.zze;
    }

    @Override
    public final synchronized String zzs() {
        return null;
    }

    @Override
    public final synchronized String zzt() {
        return null;
    }

    @Override
    public final synchronized void zzx() {
        wd8.e("destroy must be called on the main UI thread.");
        nrf nrfVar = this.zza;
        if (nrfVar != null) {
            nrfVar.a();
        }
    }

    @Override
    public final void zzy(zzm zzmVar, zzbn zzbnVar) {
    }

    @Override
    public final synchronized void zzz() {
        wd8.e("pause must be called on the main UI thread.");
    }
}
