package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbsx;
import defpackage.cye;
import defpackage.t8g;

public final class zzab extends zzbsx {
    private final AdOverlayInfoParcel zza;
    private final Activity zzb;
    private boolean zzc = false;
    private boolean zzd = false;
    private boolean zze = false;

    public zzab(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zza = adOverlayInfoParcel;
        this.zzb = activity;
    }

    private final synchronized void zzb() {
        try {
            if (this.zzd) {
                return;
            }
            zzr zzrVar = this.zza.zzc;
            if (zzrVar != null) {
                zzrVar.zzds(4);
            }
            this.zzd = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final boolean zzH() throws RemoteException {
        return false;
    }

    @Override
    public final void zzh(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override
    public final void zzi() throws RemoteException {
    }

    @Override
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override
    public final void zzl(@Nullable Bundle bundle) {
        zzr zzrVar;
        if (((Boolean) zzbd.zzc().b(cye.X8)).booleanValue() && !this.zze) {
            this.zzb.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zza;
        if (adOverlayInfoParcel == null) {
            this.zzb.finish();
            return;
        }
        if (z) {
            this.zzb.finish();
            return;
        }
        if (bundle == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            t8g t8gVar = adOverlayInfoParcel.zzu;
            if (t8gVar != null) {
                t8gVar.zzdd();
            }
            Activity activity = this.zzb;
            if (activity.getIntent() != null && activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                zzrVar.zzdp();
            }
        }
        Activity activity2 = this.zzb;
        zzc zzcVar = adOverlayInfoParcel.zza;
        zzac zzacVar = adOverlayInfoParcel.zzi;
        com.google.android.gms.ads.internal.zzv.zzi();
        if (zza.zzb(activity2, zzcVar, zzacVar, zzcVar.zzi, null, "")) {
            return;
        }
        activity2.finish();
    }

    @Override
    public final void zzm() throws RemoteException {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override
    public final void zzo() throws RemoteException {
        zzr zzrVar = this.zza.zzc;
        if (zzrVar != null) {
            zzrVar.zzdi();
        }
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override
    public final void zzp(int i, String[] strArr, int[] iArr) {
    }

    @Override
    public final void zzq() throws RemoteException {
    }

    @Override
    public final void zzr() throws RemoteException {
        if (this.zzc) {
            this.zzb.finish();
            return;
        }
        this.zzc = true;
        zzr zzrVar = this.zza.zzc;
        if (zzrVar != null) {
            zzrVar.zzdE();
        }
    }

    @Override
    public final void zzs(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzc);
    }

    @Override
    public final void zzt() throws RemoteException {
    }

    @Override
    public final void zzu() throws RemoteException {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override
    public final void zzv() throws RemoteException {
        zzr zzrVar = this.zza.zzc;
        if (zzrVar != null) {
            zzrVar.zzdr();
        }
    }

    @Override
    public final void zzx() throws RemoteException {
        this.zze = true;
    }
}
