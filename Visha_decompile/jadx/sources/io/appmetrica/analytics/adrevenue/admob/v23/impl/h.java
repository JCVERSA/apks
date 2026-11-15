package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;

public final class h extends g {
    public h(@NonNull d dVar, @NonNull ClientContext clientContext) {
        super(dVar, clientContext);
    }

    @Override
    public final boolean process(Object... objArr) {
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, AdValue.class, InterstitialAd.class)) {
            return false;
        }
        AdValue adValue = (AdValue) objArr[0];
        InterstitialAd interstitialAd = (InterstitialAd) objArr[1];
        this.a.getClass();
        a(d.a(adValue, ModuleAdType.INTERSTITIAL, "interstitialAd", interstitialAd.getResponseInfo(), interstitialAd.getAdUnitId()));
        return true;
    }
}
