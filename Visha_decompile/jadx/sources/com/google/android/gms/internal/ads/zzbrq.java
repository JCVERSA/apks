package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import defpackage.l9f;
import defpackage.xye;

public final class zzbrq implements MediationInterstitialAdapter {
    public Activity a;
    public MediationInterstitialListener b;
    public Uri c;

    @Override
    public final void onDestroy() {
        zzo.zze("Destroying AdMobCustomTabsAdapter adapter.");
    }

    @Override
    public final void onPause() {
        zzo.zze("Pausing AdMobCustomTabsAdapter adapter.");
    }

    @Override
    public final void onResume() {
        zzo.zze("Resuming AdMobCustomTabsAdapter adapter.");
    }

    @Override
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.b = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            zzo.zzj("Listener not set for mediation. Returning.");
            return;
        }
        if (!(context instanceof Activity)) {
            zzo.zzj("AdMobCustomTabs can only work with Activity context. Bailing out.");
            this.b.onAdFailedToLoad(this, 0);
            return;
        }
        if (!xye.g(context)) {
            zzo.zzj("Default browser does not support custom tabs. Bailing out.");
            this.b.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString("tab_url");
        if (TextUtils.isEmpty(string)) {
            zzo.zzj("The tab_url retrieved from mediation metadata is empty. Bailing out.");
            this.b.onAdFailedToLoad(this, 0);
        } else {
            this.a = (Activity) context;
            this.c = Uri.parse(string);
            this.b.onAdLoaded(this);
        }
    }

    @Override
    public final void showInterstitial() {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
        customTabsIntentBuild.intent.setData(this.c);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzbrp(this, new AdOverlayInfoParcel(new zzc(customTabsIntentBuild.intent, null), null, new l9f(this), null, new VersionInfoParcel(0, 0, false), null, null, "")));
        zzv.zzp().r();
    }
}
