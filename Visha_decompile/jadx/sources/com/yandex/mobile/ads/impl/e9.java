package com.yandex.mobile.ads.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum e9 {
    c("html"),
    d(PluginErrorDetails.Platform.NATIVE),
    e("javascript");

    private final String b;

    e9(String str) {
        this.b = str;
    }

    @Override
    public final String toString() {
        return this.b;
    }
}
