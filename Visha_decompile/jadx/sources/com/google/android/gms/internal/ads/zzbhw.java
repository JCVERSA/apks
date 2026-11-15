package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzg;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class zzbhw extends zzbhd {
    private final OnAdManagerAdViewLoadedListener zza;

    public zzbhw(OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener) {
        this.zza = onAdManagerAdViewLoadedListener;
    }

    @Override
    public final void zze(zzbx zzbxVar, IObjectWrapper iObjectWrapper) {
        if (zzbxVar == null || iObjectWrapper == null) {
            return;
        }
        AdManagerAdView adManagerAdView = new AdManagerAdView((Context) ObjectWrapper.unwrap(iObjectWrapper));
        try {
            if (zzbxVar.zzi() instanceof zzg) {
                zzg zzgVar = (zzg) zzbxVar.zzi();
                adManagerAdView.setAdListener(zzgVar != null ? zzgVar.zzb() : null);
            }
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        try {
            if (zzbxVar.zzj() instanceof zzayv) {
                zzayv zzayvVar = (zzayv) zzbxVar.zzj();
                adManagerAdView.setAppEventListener(zzayvVar != null ? zzayvVar.zzb() : null);
            }
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
        }
        zzf.zza.post(new zzbhv(this, adManagerAdView, zzbxVar));
    }
}
