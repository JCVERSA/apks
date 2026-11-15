package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.dmh;
import defpackage.emh;
import defpackage.hlh;
import defpackage.jlh;
import defpackage.wd8;
import defpackage.wig;
import defpackage.wlh;
import defpackage.wmh;
import java.util.regex.Pattern;

public final class zzfar extends zzbvm {
    private final wlh zza;
    private final hlh zzb;
    private final wmh zzc;

    @Nullable
    private wig zzd;
    private boolean zze = false;

    public zzfar(wlh wlhVar, hlh hlhVar, wmh wmhVar) {
        this.zza = wlhVar;
        this.zzb = hlhVar;
        this.zzc = wmhVar;
    }

    private final synchronized boolean zzy() {
        wig wigVar = this.zzd;
        return (wigVar == null || wigVar.l()) ? false : true;
    }

    @Override
    public final Bundle zzb() {
        wd8.e("getAdMetadata can only be called from the UI thread.");
        wig wigVar = this.zzd;
        return wigVar != null ? wigVar.i() : new Bundle();
    }

    @Override
    @Nullable
    public final synchronized zzdx zzc() throws RemoteException {
        wig wigVar;
        if (((Boolean) zzbd.zzc().b(cye.J6)).booleanValue() && (wigVar = this.zzd) != null) {
            return wigVar.c();
        }
        return null;
    }

    @Override
    @Nullable
    public final synchronized String zzd() throws RemoteException {
        wig wigVar = this.zzd;
        if (wigVar == null || wigVar.c() == null) {
            return null;
        }
        return wigVar.c().zzg();
    }

    @Override
    public final void zze() throws RemoteException {
        zzf(null);
    }

    @Override
    public final synchronized void zzf(IObjectWrapper iObjectWrapper) {
        wd8.e("destroy must be called on the main UI thread.");
        Context context = null;
        this.zzb.zzg(null);
        if (this.zzd != null) {
            if (iObjectWrapper != null) {
                context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            }
            this.zzd.d().F(context);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(defpackage.cye.A5)).booleanValue() == false) goto L18;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzg(zzbvr zzbvrVar) throws RemoteException {
        wd8.e("loadAd must be called on the main UI thread.");
        String str = zzbvrVar.zzb;
        String str2 = (String) zzbd.zzc().b(cye.y5);
        if (str2 != null && str != null) {
            try {
                if (!Pattern.matches(str2, str)) {
                }
            } catch (RuntimeException e) {
                zzv.zzp().x(e, "NonagonUtil.isPatternMatched");
            }
            return;
        }
        if (zzy()) {
        }
        jlh jlhVar = new jlh(null);
        this.zzd = null;
        wlh wlhVar = this.zza;
        wlhVar.i(1);
        wlhVar.a(zzbvrVar.zza, zzbvrVar.zzb, jlhVar, new dmh(this));
    }

    @Override
    public final void zzh() {
        zzi(null);
    }

    @Override
    public final synchronized void zzi(IObjectWrapper iObjectWrapper) {
        wd8.e("pause must be called on the main UI thread.");
        if (this.zzd != null) {
            this.zzd.d().G(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public final void zzj() {
        zzk(null);
    }

    @Override
    public final synchronized void zzk(IObjectWrapper iObjectWrapper) {
        wd8.e("resume must be called on the main UI thread.");
        if (this.zzd != null) {
            this.zzd.d().H(iObjectWrapper == null ? null : (Context) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override
    public final void zzl(zzcb zzcbVar) {
        wd8.e("setAdMetadataListener can only be called from the UI thread.");
        if (zzcbVar == null) {
            this.zzb.zzg(null);
        } else {
            this.zzb.zzg(new emh(this, zzcbVar));
        }
    }

    @Override
    public final synchronized void zzm(String str) throws RemoteException {
        wd8.e("#008 Must be called on the main UI thread.: setCustomData");
        this.zzc.b = str;
    }

    @Override
    public final synchronized void zzn(boolean z) {
        wd8.e("setImmersiveMode must be called on the main UI thread.");
        this.zze = z;
    }

    @Override
    public final void zzo(zzbvq zzbvqVar) throws RemoteException {
        wd8.e("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzb.p(zzbvqVar);
    }

    @Override
    public final synchronized void zzp(String str) throws RemoteException {
        wd8.e("setUserId must be called on the main UI thread.");
        this.zzc.a = str;
    }

    @Override
    public final synchronized void zzq() throws RemoteException {
        zzr(null);
    }

    @Override
    public final synchronized void zzr(@Nullable IObjectWrapper iObjectWrapper) throws RemoteException {
        try {
            wd8.e("showAd must be called on the main UI thread.");
            if (this.zzd != null) {
                Activity activity = null;
                if (iObjectWrapper != null) {
                    Object objUnwrap = ObjectWrapper.unwrap(iObjectWrapper);
                    if (objUnwrap instanceof Activity) {
                        activity = (Activity) objUnwrap;
                    }
                }
                this.zzd.o(this.zze, activity);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final boolean zzs() throws RemoteException {
        wd8.e("isLoaded must be called on the main UI thread.");
        return zzy();
    }

    @Override
    public final boolean zzt() {
        wig wigVar = this.zzd;
        return wigVar != null && wigVar.n();
    }

    @Override
    public final void zzu(zzbvl zzbvlVar) {
        wd8.e("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.zzb.q(zzbvlVar);
    }
}
