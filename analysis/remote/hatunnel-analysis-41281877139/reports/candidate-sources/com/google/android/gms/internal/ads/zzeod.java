package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

public final class zzeod implements zzemq {
    private final Context zza;
    private final zzdoe zzb;
    private final Executor zzc;
    private final zzflc zzd;
    private final zzeaj zze;

    public zzeod(Context context, Executor executor, zzdoe zzdoeVar, zzflc zzflcVar, zzeaj zzeajVar) {
        this.zza = context;
        this.zzb = zzdoeVar;
        this.zzc = executor;
        this.zzd = zzflcVar;
        this.zze = zzeajVar;
    }

    private static String zze(zzfld zzfldVar) {
        try {
            return zzfldVar.zzv.getString(ProtectedFastSSH.s("棸"));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override
    public final boolean zza(zzflo zzfloVar, zzfld zzfldVar) {
        Context context = this.zza;
        return (context instanceof Activity) && zzbkh.zza(context) && !TextUtils.isEmpty(zze(zzfldVar));
    }

    @Override
    public final ListenableFuture zzb(zzflo zzfloVar, zzfld zzfldVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzoT)).booleanValue()) {
            zzeai zzeaiVarZza = this.zze.zza();
            zzeaiVarZza.zzc(ProtectedFastSSH.s("棹"), ProtectedFastSSH.s("棺"));
            zzeaiVarZza.zzd();
        }
        String strZze = zze(zzfldVar);
        return zzhcy.zzj(zzhcy.zza(null), new zzeoc(this, strZze != null ? Uri.parse(strZze) : null, zzfloVar, zzfldVar, zzfloVar.zzb.zzb), this.zzc);
    }

    final ListenableFuture zzc(Uri uri, zzflo zzfloVar, zzfld zzfldVar, zzflg zzflgVar, Object obj) {
        try {
            CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
            customTabsIntentBuild.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent, null);
            zzcgo zzcgoVar = new zzcgo();
            zzdmy zzdmyVarZzd = this.zzb.zzd(new zzczb(zzfloVar, zzfldVar, null), new zzdnb(new zzeob(this, zzcgoVar, zzfldVar), null));
            zzcgoVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzdmyVarZzd.zzi(), null, new VersionInfoParcel(0, 0, false), null, null, zzflgVar.zzb));
            this.zzd.zzd();
            return zzhcy.zza(zzdmyVarZzd.zzh());
        } catch (Throwable th) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(ProtectedFastSSH.s("棻"), th);
            throw th;
        }
    }

    final zzeaj zzd() {
        return this.zze;
    }
}
