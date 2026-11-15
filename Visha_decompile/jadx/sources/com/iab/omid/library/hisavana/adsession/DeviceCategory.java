package com.iab.omid.library.hisavana.adsession;

public enum DeviceCategory {
    CTV("ctv"),
    MOBILE("mobile"),
    OTHER("other");

    private final String deviceCategory;

    DeviceCategory(String str) {
        this.deviceCategory = str;
    }

    @Override
    public String toString() {
        return this.deviceCategory;
    }
}
