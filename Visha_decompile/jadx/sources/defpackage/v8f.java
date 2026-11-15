package defpackage;

import android.os.RemoteException;
import com.alibaba.android.arouter.utils.Consts;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbpo;

public final class v8f implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    public final zzbpe a;
    public UnifiedNativeAdMapper b;
    public h1f c;

    public v8f(zzbpe zzbpeVar) {
        this.a = zzbpeVar;
    }

    public final UnifiedNativeAdMapper a() {
        return this.b;
    }

    public final h1f b() {
        return this.c;
    }

    @Override
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdClicked.");
        try {
            this.a.zze();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdClosed.");
        try {
            this.a.zzf();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToLoad with error. " + i);
        try {
            this.a.zzg(i);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.b;
        if (this.c == null) {
            if (unifiedNativeAdMapper == null) {
                zzo.zzl("#007 Could not call remote method.", null);
                return;
            } else if (!unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                zzo.zze("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzo.zze("Adapter called onAdImpression.");
        try {
            this.a.zzm();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLeftApplication.");
        try {
            this.a.zzn();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLoaded.");
        try {
            this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdOpened.");
        try {
            this.a.zzp();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onVideoEnd.");
        try {
            this.a.zzw();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void zzb(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAppEvent.");
        try {
            this.a.zzq(str, str2);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void zzd(MediationNativeAdapter mediationNativeAdapter, h1f h1fVar) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLoaded with template id ".concat(String.valueOf(h1fVar.b())));
        this.c = h1fVar;
        try {
            this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void zze(MediationNativeAdapter mediationNativeAdapter, h1f h1fVar, String str) {
        try {
            this.a.zzr(h1fVar.a(), str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdClicked.");
        try {
            this.a.zze();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdClosed.");
        try {
            this.a.zzf();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToLoad with error. ErrorCode: " + adError.getCode() + ". ErrorMessage: " + adError.getMessage() + ". ErrorDomain: " + adError.getDomain());
        try {
            this.a.zzh(adError.zza());
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLeftApplication.");
        try {
            this.a.zzn();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLoaded.");
        try {
            this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdOpened.");
        try {
            this.a.zzp();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.b;
        if (this.c == null) {
            if (unifiedNativeAdMapper == null) {
                zzo.zzl("#007 Could not call remote method.", null);
                return;
            } else if (!unifiedNativeAdMapper.getOverrideClickHandling()) {
                zzo.zze("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzo.zze("Adapter called onAdClicked.");
        try {
            this.a.zze();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdClosed.");
        try {
            this.a.zzf();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLeftApplication.");
        try {
            this.a.zzn();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLoaded.");
        this.b = unifiedNativeAdMapper;
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.zzb(new zzbpo());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zze(videoController);
            }
        }
        try {
            this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdOpened.");
        try {
            this.a.zzp();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToLoad with error " + i + Consts.DOT);
        try {
            this.a.zzg(i);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToLoad with error. ErrorCode: " + adError.getCode() + ". ErrorMessage: " + adError.getMessage() + ". ErrorDomain: " + adError.getDomain());
        try {
            this.a.zzh(adError.zza());
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToLoad with error " + i + Consts.DOT);
        try {
            this.a.zzg(i);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToLoad with error. ErrorCode: " + adError.getCode() + ". ErrorMessage: " + adError.getMessage() + ". ErrorDomain: " + adError.getDomain());
        try {
            this.a.zzh(adError.zza());
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
