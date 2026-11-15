package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.OutOfContextTestingActivity;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.cye;
import defpackage.g8i;
import defpackage.jpg;
import defpackage.npg;
import defpackage.opg;
import defpackage.ppg;
import defpackage.qpg;
import defpackage.qxe;
import defpackage.rpg;
import defpackage.spg;
import defpackage.tpg;
import defpackage.upg;
import defpackage.zog;
import defpackage.zpg;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class zzdva extends com.google.android.gms.ads.internal.client.zzds {

    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final WeakReference zzc;
    private final jpg zzd;
    private final g8i zze;
    private zog zzf;

    public zzdva(Context context, WeakReference weakReference, jpg jpgVar, zpg zpgVar, g8i g8iVar) {
        this.zzb = context;
        this.zzc = weakReference;
        this.zzd = jpgVar;
        this.zze = g8iVar;
    }

    private final Context zzj() {
        Context context = (Context) this.zzc.get();
        return context == null ? this.zzb : context;
    }

    private static AdRequest zzk() {
        Bundle bundle = new Bundle();
        bundle.putString("request_origin", "inspector_ooct");
        return new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
    }

    public static String zzl(Object obj) {
        ResponseInfo responseInfo;
        zzdx zzdxVarZzc;
        if (obj instanceof LoadAdError) {
            responseInfo = ((LoadAdError) obj).getResponseInfo();
        } else if (obj instanceof AppOpenAd) {
            responseInfo = ((AppOpenAd) obj).getResponseInfo();
        } else if (obj instanceof InterstitialAd) {
            responseInfo = ((InterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedAd) {
            responseInfo = ((RewardedAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedInterstitialAd) {
            responseInfo = ((RewardedInterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof AdView) {
            responseInfo = ((AdView) obj).getResponseInfo();
        } else {
            if (!(obj instanceof NativeAd)) {
                return "";
            }
            responseInfo = ((NativeAd) obj).getResponseInfo();
        }
        if (responseInfo == null || (zzdxVarZzc = responseInfo.zzc()) == null) {
            return "";
        }
        try {
            return zzdxVarZzc.zzh();
        } catch (RemoteException unused) {
            return "";
        }
    }

    public final synchronized void zzm(String str, String str2) {
        try {
            j8.r(this.zzf.c(str), new tpg(this, str2), this.zze);
        } catch (NullPointerException e) {
            zzv.zzp().x(e, "OutOfContextTester.setAdAsOutOfContext");
            this.zzd.e(str2);
        }
    }

    private final synchronized void zzn(String str, String str2) {
        try {
            j8.r(this.zzf.c(str), new upg(this, str2), this.zze);
        } catch (NullPointerException e) {
            zzv.zzp().x(e, "OutOfContextTester.setAdAsShown");
            this.zzd.e(str2);
        }
    }

    @Override
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        ViewGroup viewGroup = (ViewGroup) ObjectWrapper.unwrap(iObjectWrapper2);
        if (context == null || viewGroup == null) {
            return;
        }
        Map map = this.zza;
        Object obj = map.get(str);
        if (obj != null) {
            map.remove(str);
        }
        if (obj instanceof AdView) {
            zpg.a(context, viewGroup, (AdView) obj);
        } else if (obj instanceof NativeAd) {
            zpg.b(context, viewGroup, (NativeAd) obj);
        }
    }

    public final void zzf(zog zogVar) {
        this.zzf = zogVar;
    }

    public final synchronized void zzg(String str, Object obj, String str2) {
        this.zza.put(str, obj);
        zzm(zzl(obj), str2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final synchronized void zzh(final String str, String str2, final String str3) {
        byte b;
        try {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (!str2.equals("NATIVE")) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case -1372958932:
                    if (!str2.equals("INTERSTITIAL")) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                case -428325382:
                    if (!str2.equals("APP_OPEN_AD")) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 543046670:
                    if (!str2.equals("REWARDED")) {
                        b = -1;
                    } else {
                        b = 4;
                    }
                    break;
                case 1854800829:
                    if (!str2.equals("REWARDED_INTERSTITIAL")) {
                        b = -1;
                    } else {
                        b = 5;
                    }
                    break;
                case 1951953708:
                    if (!str2.equals("BANNER")) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            if (b == 0) {
                AppOpenAd.load(zzj(), str, zzk(), new npg(this, str, str3));
                return;
            }
            if (b == 1) {
                AdView adView = new AdView(zzj());
                adView.setAdSize(AdSize.BANNER);
                adView.setAdUnitId(str);
                adView.setAdListener(new opg(this, str, adView, str3));
                adView.loadAd(zzk());
                return;
            }
            if (b == 2) {
                InterstitialAd.load(zzj(), str, zzk(), new ppg(this, str, str3));
                return;
            }
            if (b == 3) {
                AdLoader.Builder builder = new AdLoader.Builder(zzj(), str);
                builder.forNativeAd(new NativeAd.OnNativeAdLoadedListener() {
                    @Override
                    public final void onNativeAdLoaded(NativeAd nativeAd) {
                        this.a.zzg(str, nativeAd, str3);
                    }
                });
                builder.withAdListener(new spg(this, str3));
                builder.build().loadAd(zzk());
                return;
            }
            if (b == 4) {
                RewardedAd.load(zzj(), str, zzk(), new qpg(this, str, str3));
            } else {
                if (b != 5) {
                    return;
                }
                RewardedInterstitialAd.load(zzj(), str, zzk(), new rpg(this, str, str3));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzi(String str, String str2) {
        Map map;
        Object obj;
        try {
            Activity activityA = this.zzd.a();
            if (activityA != null && (obj = (map = this.zza).get(str)) != null) {
                qxe qxeVar = cye.y9;
                if (!((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() || (obj instanceof AppOpenAd) || (obj instanceof InterstitialAd) || (obj instanceof RewardedAd) || (obj instanceof RewardedInterstitialAd)) {
                    map.remove(str);
                }
                zzn(zzl(obj), str2);
                if (obj instanceof AppOpenAd) {
                    ((AppOpenAd) obj).show(activityA);
                    return;
                }
                if (obj instanceof InterstitialAd) {
                    ((InterstitialAd) obj).show(activityA);
                    return;
                }
                if (obj instanceof RewardedAd) {
                    ((RewardedAd) obj).show(activityA, new OnUserEarnedRewardListener() {
                        @Override
                        public final void onUserEarnedReward(RewardItem rewardItem) {
                        }
                    });
                    return;
                }
                if (obj instanceof RewardedInterstitialAd) {
                    ((RewardedInterstitialAd) obj).show(activityA, new OnUserEarnedRewardListener() {
                        @Override
                        public final void onUserEarnedReward(RewardItem rewardItem) {
                        }
                    });
                    return;
                }
                if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && ((obj instanceof AdView) || (obj instanceof NativeAd))) {
                    Intent intent = new Intent();
                    Context contextZzj = zzj();
                    intent.setClassName(contextZzj, OutOfContextTestingActivity.CLASS_NAME);
                    intent.putExtra(OutOfContextTestingActivity.AD_UNIT_KEY, str);
                    zzv.zzq();
                    com.google.android.gms.ads.internal.util.zzs.zzU(contextZzj, intent);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
