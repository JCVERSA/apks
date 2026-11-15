package defpackage;

import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;

public final class o02 {
    public static final o02 a = new o02();

    public final ConfigCodeSeatDTO a(ConfigCodeSeatDTO configCodeSeatDTO) {
        y45.j(configCodeSeatDTO, "defaultConfig");
        configCodeSeatDTO.setApplicationId(r6.b);
        configCodeSeatDTO.setAdSeatType("");
        configCodeSeatDTO.setOfflineAdCacheCount(5);
        configCodeSeatDTO.setOfflineAdRequestCount(2);
        configCodeSeatDTO.setOfflineAdRequestTimeInterval(30);
        configCodeSeatDTO.setOfflineAdRequestTimeIntervalNoAd(24);
        configCodeSeatDTO.setAdShowCountLimit(-1);
        configCodeSeatDTO.setCarouselTime(0);
        configCodeSeatDTO.setCarouselCount(1);
        configCodeSeatDTO.setShowInterval(0);
        configCodeSeatDTO.setLastOfflineAdEnable(Boolean.FALSE);
        configCodeSeatDTO.setDefaultConfig(Boolean.TRUE);
        return configCodeSeatDTO;
    }
}
