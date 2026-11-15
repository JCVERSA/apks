package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.zzc;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.b8f;
import defpackage.b9f;
import defpackage.c9f;
import defpackage.cye;
import defpackage.d9f;
import defpackage.e9f;
import defpackage.f9f;
import defpackage.g9f;
import defpackage.h9f;
import defpackage.i9f;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbrk extends zzbqw {
    private final RtbAdapter zza;
    private MediationInterstitialAd zzb;
    private MediationRewardedAd zzc;
    private MediationAppOpenAd zzd;
    private String zze = "";

    public zzbrk(RtbAdapter rtbAdapter) {
        this.zza = rtbAdapter;
    }

    private final Bundle zzv(zzm zzmVar) {
        Bundle bundle;
        Bundle bundle2 = zzmVar.zzm;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.zza.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static final Bundle zzw(String str) throws RemoteException {
        zzo.zzj("Server parameters: ".concat(String.valueOf(str)));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e) {
            zzo.zzh("", e);
            throw new RemoteException();
        }
    }

    private static final boolean zzx(zzm zzmVar) {
        if (zzmVar.zzf) {
            return true;
        }
        zzbb.zzb();
        return zzf.zzs();
    }

    @Nullable
    private static final String zzy(String str, zzm zzmVar) {
        String str2 = zzmVar.zzu;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    @Override
    @Nullable
    public final zzea zze() {
        MediationExtrasReceiver mediationExtrasReceiver = this.zza;
        if (mediationExtrasReceiver instanceof zza) {
            try {
                return ((zza) mediationExtrasReceiver).getVideoController();
            } catch (Throwable th) {
                zzo.zzh("", th);
            }
        }
        return null;
    }

    @Override
    public final zzbrm zzf() throws RemoteException {
        return zzbrm.zza(this.zza.getVersionInfo());
    }

    @Override
    public final zzbrm zzg() throws RemoteException {
        return zzbrm.zza(this.zza.getSDKVersionInfo());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    @Override
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzr zzrVar, zzbra zzbraVar) throws RemoteException {
        AdFormat adFormat;
        try {
            h9f h9fVar = new h9f(this, zzbraVar);
            RtbAdapter rtbAdapter = this.zza;
            switch (str) {
                case "banner":
                    adFormat = AdFormat.BANNER;
                    MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(mediationConfiguration);
                    rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                    return;
                case "interstitial":
                    adFormat = AdFormat.INTERSTITIAL;
                    MediationConfiguration mediationConfiguration2 = new MediationConfiguration(adFormat, bundle2);
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(mediationConfiguration2);
                    rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList2, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                    return;
                case "rewarded":
                    adFormat = AdFormat.REWARDED;
                    MediationConfiguration mediationConfiguration3 = new MediationConfiguration(adFormat, bundle2);
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(mediationConfiguration3);
                    rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList3, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                    return;
                case "rewarded_interstitial":
                    adFormat = AdFormat.REWARDED_INTERSTITIAL;
                    MediationConfiguration mediationConfiguration4 = new MediationConfiguration(adFormat, bundle2);
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(mediationConfiguration4);
                    rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList4, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                    return;
                case "native":
                    adFormat = AdFormat.NATIVE;
                    MediationConfiguration mediationConfiguration5 = new MediationConfiguration(adFormat, bundle2);
                    ArrayList arrayList5 = new ArrayList();
                    arrayList5.add(mediationConfiguration5);
                    rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList5, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                    return;
                case "app_open":
                    adFormat = AdFormat.APP_OPEN_AD;
                    MediationConfiguration mediationConfiguration6 = new MediationConfiguration(adFormat, bundle2);
                    ArrayList arrayList6 = new ArrayList();
                    arrayList6.add(mediationConfiguration6);
                    rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList6, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                    return;
                case "app_open_ad":
                    if (((Boolean) zzbd.zzc().b(cye.Vb)).booleanValue()) {
                        adFormat = AdFormat.APP_OPEN_AD;
                        MediationConfiguration mediationConfiguration7 = new MediationConfiguration(adFormat, bundle2);
                        ArrayList arrayList7 = new ArrayList();
                        arrayList7.add(mediationConfiguration7);
                        rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList7, bundle, zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza)), h9fVar);
                        return;
                    }
                default:
                    throw new IllegalArgumentException("Internal Error");
            }
        } catch (Throwable th) {
            zzo.zzh("Error generating signals for RTB", th);
            b8f.a(iObjectWrapper, th, "adapter.collectSignals");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzi(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqi zzbqiVar, zzbpe zzbpeVar) throws RemoteException {
        try {
            this.zza.loadRtbAppOpenAd(new MediationAppOpenAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), this.zze), new g9f(this, zzbqiVar, zzbpeVar));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render app open ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbAppOpenAd");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzj(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbql zzbqlVar, zzbpe zzbpeVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        try {
            this.zza.loadRtbBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza), this.zze), new b9f(this, zzbqlVar, zzbpeVar));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render banner ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbBannerAd");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzk(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbql zzbqlVar, zzbpe zzbpeVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        try {
            c9f c9fVar = new c9f(this, zzbqlVar, zzbpeVar);
            RtbAdapter rtbAdapter = this.zza;
            zzw(str2);
            zzv(zzmVar);
            zzx(zzmVar);
            Location location = zzmVar.zzk;
            zzy(str2, zzmVar);
            zzc.zzc(zzrVar.zze, zzrVar.zzb, zzrVar.zza);
            c9fVar.onFailure(new AdError(7, rtbAdapter.getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render interscroller ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbInterscrollerAd");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzl(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqo zzbqoVar, zzbpe zzbpeVar) throws RemoteException {
        try {
            this.zza.loadRtbInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), this.zze), new d9f(this, zzbqoVar, zzbpeVar));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render interstitial ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzm(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqr zzbqrVar, zzbpe zzbpeVar) throws RemoteException {
        zzn(str, str2, zzmVar, iObjectWrapper, zzbqrVar, zzbpeVar, null);
    }

    @Override
    public final void zzn(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqr zzbqrVar, zzbpe zzbpeVar, zzbfi zzbfiVar) throws RemoteException {
        try {
            this.zza.loadRtbNativeAdMapper(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), this.zze, zzbfiVar), new e9f(this, zzbqrVar, zzbpeVar));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render native ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbNativeAdMapper");
            String message = th.getMessage();
            if (TextUtils.isEmpty(message) || !message.equals("Method is not found")) {
                throw new RemoteException();
            }
            try {
                this.zza.loadRtbNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), this.zze, zzbfiVar), new f9f(this, zzbqrVar, zzbpeVar));
            } catch (Throwable th2) {
                zzo.zzh("Adapter failed to render native ad.", th2);
                b8f.a(iObjectWrapper, th2, "adapter.loadRtbNativeAd");
                throw new RemoteException();
            }
        }
    }

    @Override
    public final void zzo(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqu zzbquVar, zzbpe zzbpeVar) throws RemoteException {
        try {
            this.zza.loadRtbRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), this.zze), new i9f(this, zzbquVar, zzbpeVar));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render rewarded interstitial ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbRewardedInterstitialAd");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzp(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqu zzbquVar, zzbpe zzbpeVar) throws RemoteException {
        try {
            this.zza.loadRtbRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzw(str2), zzv(zzmVar), zzx(zzmVar), zzmVar.zzk, zzmVar.zzg, zzmVar.zzt, zzy(str2, zzmVar), this.zze), new i9f(this, zzbquVar, zzbpeVar));
        } catch (Throwable th) {
            zzo.zzh("Adapter failed to render rewarded ad.", th);
            b8f.a(iObjectWrapper, th, "adapter.loadRtbRewardedAd");
            throw new RemoteException();
        }
    }

    @Override
    public final void zzq(String str) {
        this.zze = str;
    }

    @Override
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationAppOpenAd mediationAppOpenAd = this.zzd;
        if (mediationAppOpenAd == null) {
            return false;
        }
        try {
            mediationAppOpenAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzo.zzh("", th);
            b8f.a(iObjectWrapper, th, "adapter.showRtbAppOpenAd");
            return true;
        }
    }

    @Override
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationInterstitialAd mediationInterstitialAd = this.zzb;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzo.zzh("", th);
            b8f.a(iObjectWrapper, th, "adapter.showRtbInterstitialAd");
            return true;
        }
    }

    @Override
    public final boolean zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        MediationRewardedAd mediationRewardedAd = this.zzc;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzo.zzh("", th);
            b8f.a(iObjectWrapper, th, "adapter.showRtbRewardedAd");
            return true;
        }
    }
}
