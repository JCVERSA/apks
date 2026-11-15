package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.fre;
import defpackage.goh;
import defpackage.hlh;
import defpackage.jlh;
import defpackage.smg;
import defpackage.wd8;
import defpackage.wig;
import defpackage.wlh;
import defpackage.wmh;
import defpackage.xze;
import defpackage.ylh;
import defpackage.zlh;

public final class zzfal extends zzbwc {
    private final wlh zza;
    private final hlh zzb;
    private final String zzc;
    private final wmh zzd;
    private final Context zze;
    private final VersionInfoParcel zzf;
    private final fre zzg;
    private final smg zzh;

    @Nullable
    private wig zzi;
    private boolean zzj = ((Boolean) zzbd.zzc().b(cye.S0)).booleanValue();

    public zzfal(@Nullable String str, wlh wlhVar, Context context, hlh hlhVar, wmh wmhVar, VersionInfoParcel versionInfoParcel, fre freVar, smg smgVar) {
        this.zzc = str;
        this.zza = wlhVar;
        this.zzb = hlhVar;
        this.zzd = wmhVar;
        this.zze = context;
        this.zzf = versionInfoParcel;
        this.zzg = freVar;
        this.zzh = smgVar;
    }

    private final synchronized void zzu(zzm zzmVar, zzbwk zzbwkVar, int i) throws RemoteException {
        try {
            if (!zzmVar.zzb()) {
                boolean z = false;
                if (((Boolean) xze.k.e()).booleanValue()) {
                    if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                        z = true;
                    }
                }
                if (this.zzf.clientJarVersion < ((Integer) zzbd.zzc().b(cye.ob)).intValue() || !z) {
                    wd8.e("#008 Must be called on the main UI thread.");
                }
            }
            hlh hlhVar = this.zzb;
            hlhVar.o(zzbwkVar);
            zzv.zzq();
            if (com.google.android.gms.ads.internal.util.zzs.zzI(this.zze) && zzmVar.zzs == null) {
                int i2 = zze.zza;
                zzo.zzg("Failed to load the ad because app ID is missing.");
                hlhVar.A(goh.d(4, null, null));
                return;
            }
            if (this.zzi != null) {
                return;
            }
            jlh jlhVar = new jlh(null);
            wlh wlhVar = this.zza;
            wlhVar.i(i);
            wlhVar.a(zzmVar, this.zzc, jlhVar, new zlh(this));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final Bundle zzb() {
        wd8.e("#008 Must be called on the main UI thread.");
        wig wigVar = this.zzi;
        return wigVar != null ? wigVar.i() : new Bundle();
    }

    @Override
    @Nullable
    public final zzdx zzc() {
        wig wigVar;
        if (((Boolean) zzbd.zzc().b(cye.J6)).booleanValue() && (wigVar = this.zzi) != null) {
            return wigVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public final zzbwa zzd() {
        wd8.e("#008 Must be called on the main UI thread.");
        wig wigVar = this.zzi;
        if (wigVar != null) {
            return wigVar.j();
        }
        return null;
    }

    @Override
    @Nullable
    public final synchronized String zze() throws RemoteException {
        wig wigVar = this.zzi;
        if (wigVar == null || wigVar.c() == null) {
            return null;
        }
        return wigVar.c().zzg();
    }

    @Override
    public final synchronized void zzf(zzm zzmVar, zzbwk zzbwkVar) throws RemoteException {
        zzu(zzmVar, zzbwkVar, 2);
    }

    @Override
    public final synchronized void zzg(zzm zzmVar, zzbwk zzbwkVar) throws RemoteException {
        zzu(zzmVar, zzbwkVar, 3);
    }

    @Override
    public final synchronized void zzh(boolean z) {
        wd8.e("setImmersiveMode must be called on the main UI thread.");
        this.zzj = z;
    }

    @Override
    public final void zzi(com.google.android.gms.ads.internal.client.zzdn zzdnVar) {
        if (zzdnVar == null) {
            this.zzb.zzg(null);
        } else {
            this.zzb.zzg(new ylh(this, zzdnVar));
        }
    }

    @Override
    public final void zzj(zzdq zzdqVar) {
        wd8.e("setOnPaidEventListener must be called on the main UI thread.");
        try {
            if (!zzdqVar.zzf()) {
                this.zzh.e();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
        }
        this.zzb.k(zzdqVar);
    }

    @Override
    public final void zzk(zzbwg zzbwgVar) {
        wd8.e("#008 Must be called on the main UI thread.");
        this.zzb.n(zzbwgVar);
    }

    @Override
    public final synchronized void zzl(zzbwr zzbwrVar) {
        wd8.e("#008 Must be called on the main UI thread.");
        wmh wmhVar = this.zzd;
        wmhVar.a = zzbwrVar.zza;
        wmhVar.b = zzbwrVar.zzb;
    }

    @Override
    public final synchronized void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzn(iObjectWrapper, this.zzj);
    }

    @Override
    public final synchronized void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        wd8.e("#008 Must be called on the main UI thread.");
        if (this.zzi == null) {
            int i = zze.zza;
            zzo.zzj("Rewarded can not be shown before loaded");
            this.zzb.h(goh.d(9, null, null));
        } else {
            if (((Boolean) zzbd.zzc().b(cye.a3)).booleanValue()) {
                this.zzg.c().zzn(new Throwable().getStackTrace());
            }
            this.zzi.o(z, (Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public final boolean zzo() {
        wd8.e("#008 Must be called on the main UI thread.");
        wig wigVar = this.zzi;
        return (wigVar == null || wigVar.m()) ? false : true;
    }

    @Override
    public final void zzp(zzbwl zzbwlVar) {
        wd8.e("#008 Must be called on the main UI thread.");
        this.zzb.s(zzbwlVar);
    }
}
