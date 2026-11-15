package com.google.android.gms.ads.interstitial;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.zzb;
import defpackage.cye;
import defpackage.o5f;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public abstract class InterstitialAd {
    public static boolean isAdAvailable(@NonNull Context context, @NonNull String str) {
        try {
            return zzb.zza(context).zzk(str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final InterstitialAdLoadCallback interstitialAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        wd8.m(adRequest, "AdRequest cannot be null.");
        wd8.m(interstitialAdLoadCallback, "LoadCallback cannot be null.");
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(context);
        if (((Boolean) xze.i.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new o5f(context2, str2).a(adRequest2.zza(), interstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "InterstitialAd.load");
                        }
                    }
                });
                return;
            }
        }
        new o5f(context, str).a(adRequest.zza(), interstitialAdLoadCallback);
    }

    @Nullable
    public static InterstitialAd pollAd(@NonNull Context context, @NonNull String str) {
        try {
            zzbx zzbxVarZzf = zzb.zza(context).zzf(str);
            if (zzbxVarZzf != null) {
                return new o5f(context, str, zzbxVarZzf);
            }
            zzo.zzl("Failed to obtain an Interstitial Ad from the preloader.", null);
            return null;
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }

    @NonNull
    public abstract String getAdUnitId();

    @Nullable
    public abstract FullScreenContentCallback getFullScreenContentCallback();

    @Nullable
    public abstract OnPaidEventListener getOnPaidEventListener();

    @NonNull
    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener);

    public abstract void show(@NonNull Activity activity);
}
