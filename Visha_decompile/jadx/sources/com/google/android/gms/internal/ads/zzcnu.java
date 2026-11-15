package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.fih;
import defpackage.nrf;
import defpackage.smg;
import defpackage.wd8;

public final class zzcnu extends zzazz {
    private final nrf zza;
    private final zzbx zzb;
    private final fih zzc;
    private boolean zzd = ((Boolean) zzbd.zzc().b(cye.V0)).booleanValue();
    private final smg zze;

    public zzcnu(nrf nrfVar, zzbx zzbxVar, fih fihVar, smg smgVar) {
        this.zza = nrfVar;
        this.zzb = zzbxVar;
        this.zzc = fihVar;
        this.zze = smgVar;
    }

    @Override
    public final zzbx zze() {
        return this.zzb;
    }

    @Override
    @Nullable
    public final zzdx zzf() {
        if (((Boolean) zzbd.zzc().b(cye.J6)).booleanValue()) {
            return this.zza.c();
        }
        return null;
    }

    @Override
    public final void zzg(boolean z) {
        this.zzd = z;
    }

    @Override
    public final void zzh(zzdq zzdqVar) {
        wd8.e("setOnPaidEventListener must be called on the main UI thread.");
        if (this.zzc != null) {
            try {
                if (!zzdqVar.zzf()) {
                    this.zze.e();
                }
            } catch (RemoteException e) {
                int i = zze.zza;
                zzo.zzf("Error in making CSI ping for reporting paid event callback", e);
            }
            this.zzc.p(zzdqVar);
        }
    }

    @Override
    public final void zzi(IObjectWrapper iObjectWrapper, zzbah zzbahVar) {
        try {
            this.zzc.s(zzbahVar);
            this.zza.k((Activity) ObjectWrapper.unwrap(iObjectWrapper), zzbahVar, this.zzd);
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
