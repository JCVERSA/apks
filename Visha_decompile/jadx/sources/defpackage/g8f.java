package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.internal.ads.zzbpe;

public final class g8f implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationNativeAdCallback, MediationAppOpenAdCallback {
    public final zzbpe a;

    public g8f(zzbpe zzbpeVar) {
        this.a = zzbpeVar;
    }

    @Override
    public final void onAdClosed() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdClosed.");
        try {
            this.a.zzf();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToShow(AdError adError) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToShow.");
        zzo.zzj("Mediation ad failed to show: Error Code = " + adError.getCode() + ". Error Message = " + adError.getMessage() + " Error Domain = " + adError.getDomain());
        try {
            this.a.zzk(adError.zza());
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdLeftApplication() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdLeftApplication.");
        try {
            this.a.zzn();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdOpened() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdOpened.");
        try {
            this.a.zzp();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onVideoComplete() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onVideoComplete.");
        try {
            this.a.zzv();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onVideoMute() {
    }

    @Override
    public final void onVideoPause() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onVideoPause.");
        try {
            this.a.zzx();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onVideoPlay() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onVideoPlay.");
        try {
            this.a.zzy();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onVideoUnmute() {
    }

    @Override
    public final void reportAdClicked() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called reportAdClicked.");
        try {
            this.a.zze();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void reportAdImpression() {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called reportAdImpression.");
        try {
            this.a.zzm();
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void onAdFailedToShow(String str) {
        wd8.e("#008 Must be called on the main UI thread.");
        zzo.zze("Adapter called onAdFailedToShow.");
        zzo.zzj("Mediation ad failed to show: ".concat(String.valueOf(str)));
        try {
            this.a.zzl(str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
