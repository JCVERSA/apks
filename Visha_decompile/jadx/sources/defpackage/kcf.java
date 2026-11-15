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
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzbwa;
import com.google.android.gms.internal.ads.zzbwd;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwv;

public final class kcf extends RewardedAd {
    public final String a;
    public final zzbwd b;
    public final Context c;
    public final zzbwv d;
    public OnAdMetadataChangedListener e;
    public OnPaidEventListener f;
    public FullScreenContentCallback g;
    public final long h;

    public kcf(Context context, String str) {
        this(context, str, zzbb.zza().zzs(context, str, new zzbou()));
    }

    public final void a(zzeh zzehVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            zzbwd zzbwdVar = this.b;
            if (zzbwdVar != null) {
                zzehVar.zzo(this.h);
                zzbwdVar.zzf(zzq.zza.zza(this.c, zzehVar), new zzbwq(rewardedAdLoadCallback, this));
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
        return this.g;
    }

    @Override
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.e;
    }

    @Override
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.f;
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
            return zzbwaVarZzd == null ? RewardItem.DEFAULT_REWARD : new lcf(zzbwaVarZzd);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return RewardItem.DEFAULT_REWARD;
        }
    }

    @Override
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.g = fullScreenContentCallback;
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
        try {
            this.e = onAdMetadataChangedListener;
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
        try {
            this.f = onPaidEventListener;
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
        if (serverSideVerificationOptions != null) {
            try {
                zzbwd zzbwdVar = this.b;
                if (zzbwdVar != null) {
                    zzbwdVar.zzl(new zzbwr(serverSideVerificationOptions));
                }
            } catch (RemoteException e) {
                zzo.zzl("#007 Could not call remote method.", e);
            }
        }
    }

    @Override
    public final void show(Activity activity, OnUserEarnedRewardListener onUserEarnedRewardListener) {
        zzbwv zzbwvVar = this.d;
        zzbwvVar.zzc(onUserEarnedRewardListener);
        if (activity == null) {
            zzo.zzj("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
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

    public kcf(Context context, String str, zzbwd zzbwdVar) {
        this.h = System.currentTimeMillis();
        this.c = context.getApplicationContext();
        this.a = str;
        this.b = zzbwdVar;
        this.d = new zzbwv();
    }
}
