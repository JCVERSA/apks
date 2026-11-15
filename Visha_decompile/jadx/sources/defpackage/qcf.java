package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzfn;
import com.google.android.gms.ads.internal.client.zzfo;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwd;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwv;
import com.google.android.gms.internal.ads.zzbww;

public final class qcf extends RewardedInterstitialAd {
    public final String a;
    public final zzbwd b;
    public final Context c;
    public FullScreenContentCallback e;
    public OnAdMetadataChangedListener f;
    public OnPaidEventListener g;
    public final long h = System.currentTimeMillis();
    public final zzbwv d = new zzbwv();

    public qcf(Context context, String str) {
        this.a = str;
        this.c = context.getApplicationContext();
        this.b = zzbb.zza().zzs(context, str, new zzbou());
    }

    public final void a(zzeh zzehVar, RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback) {
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzehVar.zzo(this.h);
                zzbwdVar.zzg(zzq.zza.zza(this.c, zzehVar), new zzbww(rewardedInterstitialAdLoadCallback, this));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final Bundle getAdMetadata() {
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                return zzbwdVar.zzb();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        return new Bundle();
    }

    @Override
    public final String getAdUnitId() {
        return this.a;
    }

    @Override
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.e;
    }

    @Override
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.f;
    }

    @Override
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.g;
    }

    @Override
    public final ResponseInfo getResponseInfo() {
        zzdx zzdxVarZzc = null;
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzdxVarZzc = zzbwdVar.zzc();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zzb(zzdxVarZzc);
    }

    @Override
    public final RewardItem getRewardItem() {
        try {
            zzbwd zzbwdVar = this.b;
            zzbwa zzbwaVarZzd = zzbwdVar != null ? zzbwdVar.zzd() : null;
            if (zzbwaVarZzd != null) {
                return new lcf(zzbwaVarZzd);
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        return RewardItem.DEFAULT_REWARD;
    }

    @Override
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.e = fullScreenContentCallback;
        this.d.zzb(fullScreenContentCallback);
    }

    @Override
    public final void setImmersiveMode(boolean z) {
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzbwdVar.zzh(z);
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f = onAdMetadataChangedListener;
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzbwdVar.zzi(new zzfn(onAdMetadataChangedListener));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        this.g = onPaidEventListener;
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzbwdVar.zzj(new zzfo(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzbwdVar.zzl(new zzbwr(serverSideVerificationOptions));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        zzbwv zzbwvVar = this.d;
        zzbwvVar.zzc(onUserEarnedRewardListener);
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzbwdVar.zzk(zzbwvVar);
                zzbwdVar.zzm(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }
}
