package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.AppMetricaPlugins;
import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class B0 implements AppMetricaPlugins {
    public final D0 a;

    public B0(D0 d0) {
        this.a = d0;
    }

    @Override
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
        this.a.a(pluginErrorDetails, str);
    }

    @Override
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
        this.a.a(pluginErrorDetails);
    }

    public B0() {
        this(new D0());
    }

    @Override
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.a.a(str, str2, pluginErrorDetails);
    }
}
