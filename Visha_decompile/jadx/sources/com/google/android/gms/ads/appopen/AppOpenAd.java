package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.internal.ads.zzbaa;
import defpackage.cye;
import defpackage.jwe;
import defpackage.nve;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public abstract class AppOpenAd {

    public static abstract class AppOpenAdLoadCallback extends AdLoadCallback<AppOpenAd> {
    }

    public static boolean isAdAvailable(@NonNull Context context, @NonNull String str) {
        try {
            return zzb.zza(context).zzj(str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final AppOpenAdLoadCallback appOpenAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "adUnitId cannot be null.");
        wd8.m(adRequest, "AdRequest cannot be null.");
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(context);
        if (((Boolean) xze.d.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new jwe(context2, str2, adRequest2.zza(), appOpenAdLoadCallback).a();
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "AppOpenAd.load");
                        }
                    }
                });
                return;
            }
        }
        new jwe(context, str, adRequest.zza(), appOpenAdLoadCallback).a();
    }

    @Nullable
    public static AppOpenAd pollAd(@NonNull Context context, @NonNull String str) {
        try {
            zzbaa zzbaaVarZze = zzb.zza(context).zze(str);
            if (zzbaaVarZze != null) {
                return new nve(zzbaaVarZze, str);
            }
            zzo.zzl("Failed to obtain an App Open ad from the preloader.", null);
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
