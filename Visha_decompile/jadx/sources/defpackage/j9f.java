package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbwu;

public final class j9f implements MediationBannerAdCallback, MediationInterstitialAdCallback, MediationRewardedAdCallback, MediationNativeAdCallback, MediationAppOpenAdCallback {
    public final zzbpe a;

    public j9f(zzbpe zzbpeVar) {
        this.a = zzbpeVar;
    }

    @Override
    public final void onAdClosed() {
        try {
            this.a.zzf();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onAdFailedToShow(AdError adError) {
        try {
            zzo.zzj("Mediated ad failed to show: Error Code = " + adError.getCode() + ". Error Message = " + adError.getMessage() + " Error Domain = " + adError.getDomain());
            this.a.zzk(adError.zza());
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onAdLeftApplication() {
        try {
            this.a.zzn();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onAdOpened() {
        try {
            this.a.zzp();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onUserEarnedReward() {
        try {
            this.a.zzu();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onVideoComplete() {
        try {
            this.a.zzw();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onVideoMute() {
    }

    @Override
    public final void onVideoPause() {
        try {
            this.a.zzx();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onVideoPlay() {
        try {
            this.a.zzy();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onVideoStart() {
        try {
            this.a.zzz();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onVideoUnmute() {
    }

    @Override
    public final void reportAdClicked() {
        try {
            this.a.zze();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void reportAdImpression() {
        try {
            this.a.zzm();
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onUserEarnedReward(RewardItem rewardItem) {
        try {
            this.a.zzt(new zzbwu(rewardItem));
        } catch (RemoteException unused) {
        }
    }

    @Override
    public final void onAdFailedToShow(String str) {
        try {
            zzo.zzj("Mediated ad failed to show: " + str);
            this.a.zzl(str);
        } catch (RemoteException unused) {
        }
    }
}
