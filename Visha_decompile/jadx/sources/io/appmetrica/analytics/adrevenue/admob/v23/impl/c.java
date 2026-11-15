package io.appmetrica.analytics.adrevenue.admob.v23.impl;

import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueConstants;
import java.util.HashMap;

public final class c extends HashMap {
    public c(String str) {
        put(AdRevenueConstants.ORIGINAL_SOURCE_KEY, "ad-revenue-admob-v23");
        put(AdRevenueConstants.ORIGINAL_AD_TYPE_KEY, str);
    }
}
