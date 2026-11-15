package com.cloud.hisavana.sdk.common.util;

import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f21571a = new h();

    private h() {
    }

    public final ConfigCodeSeatDTO a(ConfigCodeSeatDTO defaultConfig) {
        Intrinsics.h(defaultConfig, "defaultConfig");
        defaultConfig.setApplicationId(c7.b.f16688b);
        defaultConfig.setAdSeatType("");
        defaultConfig.setOfflineAdCacheCount(5);
        defaultConfig.setOfflineAdRequestCount(2);
        defaultConfig.setOfflineAdRequestTimeInterval(30);
        defaultConfig.setOfflineAdRequestTimeIntervalNoAd(24);
        defaultConfig.setAdShowCountLimit(-1);
        defaultConfig.setCarouselTime(0);
        defaultConfig.setCarouselCount(1);
        defaultConfig.setShowInterval(0);
        defaultConfig.setLastOfflineAdEnable(Boolean.FALSE);
        defaultConfig.setDefaultConfig(Boolean.TRUE);
        return defaultConfig;
    }
}
