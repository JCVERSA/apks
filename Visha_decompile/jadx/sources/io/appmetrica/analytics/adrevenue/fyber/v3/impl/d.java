package io.appmetrica.analytics.adrevenue.fyber.v3.impl;

import androidx.annotation.NonNull;
import com.fyber.fairbid.ads.ImpressionData;
import com.fyber.fairbid.ads.PlacementType;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenue;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueReporter;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdType;
import java.math.BigDecimal;
import java.util.Currency;

public final class d implements ModuleAdRevenueProcessor {
    public final c a;
    public final ClientContext b;

    public d(@NonNull c cVar, @NonNull ClientContext clientContext) {
        this.a = cVar;
        this.b = clientContext;
    }

    @Override
    @NonNull
    public final String getDescription() {
        return "Fyber";
    }

    @Override
    public final boolean process(Object... objArr) {
        ModuleAdType moduleAdType;
        if (!ReflectionUtils.isArgumentsOfClasses(objArr, ImpressionData.class)) {
            return false;
        }
        ImpressionData impressionData = (ImpressionData) objArr[0];
        ModuleAdRevenueReporter adRevenueReporter = this.b.getModuleAdRevenueContext().getAdRevenueReporter();
        this.a.getClass();
        PlacementType placementType = impressionData.getPlacementType();
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(WrapUtils.getFiniteDoubleOrDefault(impressionData.getNetPayout(), 0.0d));
        Currency currency = Currency.getInstance(impressionData.getCurrency());
        if (placementType == null) {
            moduleAdType = null;
        } else {
            int i = b.a[placementType.ordinal()];
            if (i == 1) {
                moduleAdType = ModuleAdType.BANNER;
            } else if (i != 2) {
                moduleAdType = i != 3 ? ModuleAdType.OTHER : ModuleAdType.INTERSTITIAL;
            } else {
                moduleAdType = ModuleAdType.REWARDED;
            }
        }
        adRevenueReporter.reportAutoAdRevenue(new ModuleAdRevenue(bigDecimalValueOf, currency, moduleAdType, impressionData.getDemandSource(), impressionData.getCreativeId(), null, null, null, impressionData.getPriceAccuracy().toString(), new a(placementType), true));
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue from Fyber was reported", new Object[0]);
        return true;
    }
}
