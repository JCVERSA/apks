package com.iab.omid.library.hisavana.adsession;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum AdSessionContextType {
    HTML("html"),
    NATIVE(PluginErrorDetails.Platform.NATIVE),
    JAVASCRIPT("javascript");

    private final String typeString;

    AdSessionContextType(String str) {
        this.typeString = str;
    }

    @Override
    public String toString() {
        return this.typeString;
    }
}
