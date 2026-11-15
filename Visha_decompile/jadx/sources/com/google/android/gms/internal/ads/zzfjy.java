package com.google.android.gms.internal.ads;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum zzfjy {
    HTML("html"),
    NATIVE(PluginErrorDetails.Platform.NATIVE),
    JAVASCRIPT("javascript");

    private final String zze;

    zzfjy(String str) {
        this.zze = str;
    }

    @Override
    public final String toString() {
        return this.zze;
    }
}
