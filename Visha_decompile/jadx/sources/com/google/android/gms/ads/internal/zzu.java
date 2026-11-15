package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbh;
import com.google.android.gms.ads.internal.client.zzbk;
import com.google.android.gms.ads.internal.client.zzbn;
import com.google.android.gms.ads.internal.client.zzbw;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzcl;
import com.google.android.gms.ads.internal.client.zzcp;
import com.google.android.gms.ads.internal.client.zzcs;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzee;
import com.google.android.gms.ads.internal.client.zzfw;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.client.zzx;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzbth;
import com.google.android.gms.internal.ads.zzbtk;
import com.google.android.gms.internal.ads.zzbvq;
import defpackage.cgj;
import defpackage.fre;
import defpackage.gze;
import defpackage.nhj;
import defpackage.rij;
import defpackage.wd8;
import defpackage.wjj;
import defpackage.zdj;
import defpackage.zef;
import java.util.Map;
import java.util.concurrent.Future;

public final class zzu extends zzbw {
    private final VersionInfoParcel zza;
    private final zzr zzb;
    private final Future zzc = zef.a.m(new nhj(this));
    private final Context zzd;
    private final wjj zze;

    @Nullable
    private WebView zzf;

    @Nullable
    private zzbk zzg;

    @Nullable
    private fre zzh;
    private AsyncTask zzi;

    public zzu(Context context, zzr zzrVar, String str, VersionInfoParcel versionInfoParcel) {
        this.zzd = context;
        this.zza = versionInfoParcel;
        this.zzb = zzrVar;
        this.zzf = new WebView(context);
        this.zze = new wjj(context, str);
        zzV(0);
        this.zzf.setVerticalScrollBarEnabled(false);
        this.zzf.getSettings().setJavaScriptEnabled(true);
        this.zzf.setWebViewClient(new zdj(this));
        this.zzf.setOnTouchListener(new cgj(this));
    }

    public static String zzo(zzu zzuVar, String str) {
        if (zzuVar.zzh == null) {
            return str;
        }
        Uri uriA = Uri.parse(str);
        try {
            uriA = zzuVar.zzh.a(uriA, zzuVar.zzd, null, null);
        } catch (zzauz e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            zzo.zzk("Unable to process ad data", e);
        }
        return uriA.toString();
    }

    public static void zzw(zzu zzuVar, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        zzuVar.zzd.startActivity(intent);
    }

    @Override
    public final void zzA() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzB() throws RemoteException {
        wd8.e("resume must be called on the main UI thread.");
    }

    @Override
    public final void zzC(zzbh zzbhVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzD(zzbk zzbkVar) throws RemoteException {
        this.zzg = zzbkVar;
    }

    @Override
    public final void zzE(zzcb zzcbVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzF(zzr zzrVar) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override
    public final void zzG(zzcl zzclVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzH(zzbad zzbadVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzI(zzx zzxVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzJ(zzcs zzcsVar) {
    }

    @Override
    public final void zzK(zzee zzeeVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzL(boolean z) {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzM(zzbth zzbthVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzN(boolean z) throws RemoteException {
    }

    @Override
    public final void zzO(zzbdd zzbddVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzP(zzdq zzdqVar) {
    }

    @Override
    public final void zzQ(zzbtk zzbtkVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzR(String str) {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzS(zzbvq zzbvqVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzT(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final void zzU(zzfw zzfwVar) {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    public final void zzV(int i) {
        if (this.zzf == null) {
            return;
        }
        this.zzf.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    @Override
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override
    public final void zzX() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final boolean zzY() throws RemoteException {
        return false;
    }

    @Override
    public final boolean zzZ() throws RemoteException {
        return false;
    }

    @Override
    public final boolean zzaa() throws RemoteException {
        return false;
    }

    @Override
    public final boolean zzab(com.google.android.gms.ads.internal.client.zzm zzmVar) throws RemoteException {
        wd8.m(this.zzf, "This Search Ad has already been torn down");
        this.zze.f(zzmVar, this.zza);
        this.zzi = new rij(this, null).execute(new Void[0]);
        return true;
    }

    @Override
    public final void zzac(zzcp zzcpVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @VisibleForTesting
    public final int zzb(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter("height");
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            zzbb.zzb();
            return com.google.android.gms.ads.internal.util.client.zzf.zzy(this.zzd, Integer.parseInt(queryParameter));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override
    public final Bundle zzd() {
        throw new IllegalStateException("Unused method");
    }

    @Override
    public final zzr zzg() throws RemoteException {
        return this.zzb;
    }

    @Override
    public final zzbk zzi() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override
    public final zzcl zzj() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override
    @Nullable
    public final zzdx zzk() {
        return null;
    }

    @Override
    @Nullable
    public final zzea zzl() {
        return null;
    }

    @Override
    public final IObjectWrapper zzn() throws RemoteException {
        wd8.e("getAdFrame must be called on the main UI thread.");
        return ObjectWrapper.wrap(this.zzf);
    }

    @VisibleForTesting
    public final String zzp() {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) gze.d.e());
        wjj wjjVar = this.zze;
        builder.appendQueryParameter("query", wjjVar.d());
        builder.appendQueryParameter("pubId", wjjVar.c());
        builder.appendQueryParameter("mappver", wjjVar.a());
        Map mapE = wjjVar.e();
        for (String str : mapE.keySet()) {
            builder.appendQueryParameter(str, (String) mapE.get(str));
        }
        Uri uriBuild = builder.build();
        fre freVar = this.zzh;
        if (freVar != null) {
            try {
                uriBuild = freVar.b(uriBuild, this.zzd);
            } catch (zzauz e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                zzo.zzk("Unable to process ad data", e);
            }
        }
        return zzq() + "#" + uriBuild.getEncodedQuery();
    }

    @VisibleForTesting
    public final String zzq() {
        String strB = this.zze.b();
        if (true == TextUtils.isEmpty(strB)) {
            strB = "www.google.com";
        }
        return "https://" + strB + ((String) gze.d.e());
    }

    @Override
    public final String zzr() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override
    @Nullable
    public final String zzs() throws RemoteException {
        return null;
    }

    @Override
    @Nullable
    public final String zzt() throws RemoteException {
        return null;
    }

    @Override
    public final void zzx() throws RemoteException {
        wd8.e("destroy must be called on the main UI thread.");
        this.zzi.cancel(true);
        this.zzc.cancel(false);
        this.zzf.destroy();
        this.zzf = null;
    }

    @Override
    public final void zzy(com.google.android.gms.ads.internal.client.zzm zzmVar, zzbn zzbnVar) {
    }

    @Override
    public final void zzz() throws RemoteException {
        wd8.e("pause must be called on the main UI thread.");
    }
}
