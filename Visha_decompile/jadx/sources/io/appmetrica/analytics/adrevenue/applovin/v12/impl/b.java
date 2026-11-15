package io.appmetrica.analytics.adrevenue.applovin.v12.impl;

import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import defpackage.abb;
import defpackage.hi;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Currency;
import kotlin.Pair;

public final class b implements ModuleAdRevenueProcessor {
    public final a a;
    public final ClientContext b;

    public b(a aVar, ClientContext clientContext) {
        this.a = aVar;
        this.b = clientContext;
    }

    @Override
    public final String getDescription() {
        return "AppLovin";
    }

    @Override
    public final boolean process(Object... objArr) {
        ModuleAdType moduleAdType;
        String label;
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, MaxAd.class, AppLovinSdk.class)) {
            return false;
        }
        Object objF0 = hi.f0(objArr, 0);
        if (objF0 == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.applovin.mediation.MaxAd");
        }
        MaxAd maxAd = (MaxAd) objF0;
        Object objF1 = hi.f0(objArr, 1);
        if (objF1 == null) {
            throw new NullPointerException("null cannot be cast to non-null type com.applovin.sdk.AppLovinSdk");
        }
        AppLovinSdk appLovinSdk = (AppLovinSdk) objF1;
        this.a.getClass();
        MaxAdFormat format = maxAd.getFormat();
        if (format == null) {
            moduleAdType = null;
        } else if (y45.e(format, MaxAdFormat.NATIVE)) {
            moduleAdType = ModuleAdType.NATIVE;
        } else if (y45.e(format, MaxAdFormat.BANNER)) {
            moduleAdType = ModuleAdType.BANNER;
        } else if (y45.e(format, MaxAdFormat.REWARDED)) {
            moduleAdType = ModuleAdType.REWARDED;
        } else if (y45.e(format, MaxAdFormat.INTERSTITIAL)) {
            moduleAdType = ModuleAdType.INTERSTITIAL;
        } else {
            moduleAdType = y45.e(format, MaxAdFormat.MREC) ? ModuleAdType.MREC : ModuleAdType.OTHER;
        }
        ModuleAdType moduleAdType2 = moduleAdType;
        Pair pairA = abb.a("countryCode", appLovinSdk.getConfiguration().getCountryCode());
        Pair pairA2 = abb.a(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-applovin-v12");
        MaxAdFormat format2 = maxAd.getFormat();
        if (format2 == null || (label = format2.getLabel()) == null) {
            label = "null";
        }
        this.b.getModuleAdRevenueContext().getAdRevenueReporter().reportAutoAdRevenue(new ModuleAdRevenue(BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(maxAd.getRevenue(), 0.0d)), Currency.getInstance("USD"), moduleAdType2, maxAd.getNetworkName(), maxAd.getAdUnitId(), null, maxAd.getNetworkPlacement(), maxAd.getPlacement(), maxAd.getRevenuePrecision(), kotlin.collections.a.p(pairA, pairA2, abb.a(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, label)), true, 32, null));
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue from AppLovin with values " + Arrays.toString(objArr) + " was reported", new Object[0]);
        return true;
    }
}
