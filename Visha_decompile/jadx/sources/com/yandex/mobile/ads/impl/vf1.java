package com.yandex.mobile.ads.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum vf1 {
    c(PluginErrorDetails.Platform.NATIVE),
    EF19("javascript"),
    EF29("none");

    private final String b;

    vf1(String str) {
        this.b = str;
    }

    @Override
    public final String toString() {
        return this.b;
    }
}
