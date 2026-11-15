package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzblo;
import com.google.android.gms.internal.ads.zzboy;
import java.util.Collections;
import java.util.List;

public final class zzfi extends zzcx {
    private zzblo zza;

    public static void zzb(zzfi zzfiVar) {
        zzblo zzbloVar = zzfiVar.zza;
        if (zzbloVar != null) {
            try {
                zzbloVar.zzb(Collections.emptyList());
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not notify onComplete event.", e);
            }
        }
    }

    @Override
    public final float zze() throws RemoteException {
        return 1.0f;
    }

    @Override
    public final String zzf() {
        return "";
    }

    @Override
    public final List zzg() throws RemoteException {
        return Collections.emptyList();
    }

    @Override
    public final void zzh(@Nullable String str) throws RemoteException {
    }

    @Override
    public final void zzi() {
    }

    @Override
    public final void zzj(boolean z) throws RemoteException {
    }

    @Override
    public final void zzk() throws RemoteException {
        com.google.android.gms.ads.internal.util.client.zzo.zzg("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() {
            @Override
            public final void run() {
                zzfi.zzb(this.zza);
            }
        });
    }

    @Override
    public final void zzl(@Nullable String str, IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override
    public final void zzm(zzdk zzdkVar) {
    }

    @Override
    public final void zzn(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
    }

    @Override
    public final void zzo(zzboy zzboyVar) throws RemoteException {
    }

    @Override
    public final void zzp(boolean z) throws RemoteException {
    }

    @Override
    public final void zzq(float f) throws RemoteException {
    }

    @Override
    public final void zzr(String str) throws RemoteException {
    }

    @Override
    public final void zzs(zzblo zzbloVar) throws RemoteException {
        this.zza = zzbloVar;
    }

    @Override
    public final void zzt(String str) {
    }

    @Override
    public final void zzu(zzfr zzfrVar) throws RemoteException {
    }

    @Override
    public final boolean zzv() throws RemoteException {
        return false;
    }
}
