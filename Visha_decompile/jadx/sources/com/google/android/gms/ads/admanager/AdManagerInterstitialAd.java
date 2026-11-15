package com.google.android.gms.ads.admanager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import defpackage.cye;
import defpackage.o5f;
import defpackage.uaf;
import defpackage.wd8;
import defpackage.xze;

public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdManagerAdRequest adManagerAdRequest, @NonNull final AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        wd8.m(context, "Context cannot be null.");
        wd8.m(str, "AdUnitId cannot be null.");
        wd8.m(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        wd8.m(adManagerInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        wd8.e("#008 Must be called on the main UI thread.");
        cye.a(context);
        if (((Boolean) xze.i.e()).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.nb)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() {
                    @Override
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        try {
                            new o5f(context2, str2).a(adManagerAdRequest2.zza(), adManagerInterstitialAdLoadCallback);
                        } catch (IllegalStateException e) {
                            uaf.c(context2).b(e, "AdManagerInterstitialAd.load");
                        }
                    }
                });
                return;
            }
        }
        new o5f(context, str).a(adManagerAdRequest.zza(), adManagerInterstitialAdLoadCallback);
    }

    @Nullable
    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(@Nullable AppEventListener appEventListener);
}
