package com.iab.omid.library.mmadbridge.adsession;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;

public enum ImpressionType {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED("unspecified"),
    LOADED("loaded"),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER(OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER);

    private final String impressionType;

    ImpressionType(String str) {
        this.impressionType = str;
    }

    @Override
    public String toString() {
        return this.impressionType;
    }
}
