package com.iab.omid.library.vungle.adsession;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

public enum DeviceCategory {
    CTV("ctv"),
    MOBILE("mobile"),
    OTHER(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER);

    private final String deviceCategory;

    DeviceCategory(String str) {
        this.deviceCategory = str;
    }

    @Override
    public String toString() {
        return this.deviceCategory;
    }
}
