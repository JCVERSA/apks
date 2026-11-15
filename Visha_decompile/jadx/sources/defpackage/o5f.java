package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.client.zzfo;
import com.google.android.gms.ads.internal.client.zzh;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzayv;
import com.google.android.gms.internal.ads.zzbou;

public final class o5f extends AdManagerInterstitialAd {
    public final Context a;
    public final zzq b;
    public final zzbx c;
    public final String d;
    public final zzbou e;
    public final long f;
    public AppEventListener g;
    public FullScreenContentCallback h;
    public OnPaidEventListener i;

    public o5f(Context context, String str) {
        zzbou zzbouVar = new zzbou();
        this.e = zzbouVar;
        this.f = System.currentTimeMillis();
        this.a = context;
        this.d = str;
        this.b = zzq.zza;
        this.c = zzbb.zza().zzf(context, new zzr(), str, zzbouVar);
    }

    public final void a(zzeh zzehVar, AdLoadCallback adLoadCallback) {
        try {
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzehVar.zzo(this.f);
                zzbxVar.zzy(this.b.zza(this.a, zzehVar), new zzh(adLoadCallback, this));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }

    @Override
    public final String getAdUnitId() {
        return this.d;
    }

    @Override
    public final AppEventListener getAppEventListener() {
        return this.g;
    }

    @Override
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.h;
    }

    @Override
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.i;
    }

    @Override
    public final ResponseInfo getResponseInfo() {
        zzdx zzdxVarZzk = null;
        try {
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzdxVarZzk = zzbxVar.zzk();
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zzb(zzdxVarZzk);
    }

    @Override
    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.g = appEventListener;
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzbxVar.zzG(appEventListener != null ? new zzayv(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.h = fullScreenContentCallback;
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzbxVar.zzJ(new zzbe(fullScreenContentCallback));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setImmersiveMode(boolean z) {
        try {
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzbxVar.zzL(z);
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.i = onPaidEventListener;
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzbxVar.zzP(new zzfo(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void show(Activity activity) {
        if (activity == null) {
            zzo.zzj("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzbx zzbxVar = this.c;
            if (zzbxVar != null) {
                zzbxVar.zzW(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public o5f(Context context, String str, zzbx zzbxVar) {
        this.e = new zzbou();
        this.f = System.currentTimeMillis();
        this.a = context;
        this.d = str;
        this.b = zzq.zza;
        this.c = zzbxVar;
    }
}
