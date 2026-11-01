package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import app.fast.ssh.ProtectedFastSSH;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

public final class zzbym implements MediationInterstitialAdapter {
    private Activity zza;
    private MediationInterstitialListener zzb;
    private Uri zzc;

    @Override
    public final void onDestroy() {
        com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("尶"));
    }

    @Override
    public final void onPause() {
        com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("尷"));
    }

    @Override
    public final void onResume() {
        com.google.android.gms.ads.internal.util.client.zzo.zzd(ProtectedFastSSH.s("尸"));
    }

    @Override
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzb = mediationInterstitialListener;
        if (mediationInterstitialListener == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("尹"));
            return;
        }
        if (!(context instanceof Activity)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("尽"));
            this.zzb.onAdFailedToLoad(this, 0);
            return;
        }
        if (!zzbkh.zza(context)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("尺"));
            this.zzb.onAdFailedToLoad(this, 0);
            return;
        }
        String string = bundle.getString(ProtectedFastSSH.s("尻"));
        if (TextUtils.isEmpty(string)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi(ProtectedFastSSH.s("尼"));
            this.zzb.onAdFailedToLoad(this, 0);
        } else {
            this.zza = (Activity) context;
            this.zzc = Uri.parse(string);
            this.zzb.onAdLoaded(this);
        }
    }

    @Override
    public final void showInterstitial() {
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
        customTabsIntentBuild.intent.setData(this.zzc);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzbyl(this, new AdOverlayInfoParcel(new com.google.android.gms.ads.internal.overlay.zzc(customTabsIntentBuild.intent, null), null, new zzbyk(this), null, new VersionInfoParcel(0, 0, false), null, null, "")));
        com.google.android.gms.ads.internal.zzt.zzh().zzd();
    }

    final Activity zza() {
        return this.zza;
    }

    final MediationInterstitialListener zzb() {
        return this.zzb;
    }
}
