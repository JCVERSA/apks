package com.google.android.gms.internal.ads;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public enum zzfkh {
    NATIVE(PluginErrorDetails.Platform.NATIVE),
    JAVASCRIPT("javascript"),
    NONE("none");

    private final String zze;

    zzfkh(String str) {
        this.zze = str;
    }

    @Override
    public final String toString() {
        return this.zze;
    }
}
