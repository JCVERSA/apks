package com.iab.omid.library.hisavana.adsession;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum Owner {
    NATIVE(PluginErrorDetails.Platform.NATIVE),
    JAVASCRIPT("javascript"),
    NONE("none");

    private final String owner;

    Owner(String str) {
        this.owner = str;
    }

    @Override
    public String toString() {
        return this.owner;
    }
}
