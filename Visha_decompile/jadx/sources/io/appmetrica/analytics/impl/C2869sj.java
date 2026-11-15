package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class C2869sj implements Xa {
    public final PluginErrorDetails a;
    public final String b;

    public C2869sj(PluginErrorDetails pluginErrorDetails, String str) {
        this.a = pluginErrorDetails;
        this.b = str;
    }

    @Override
    public final void a(Ya ya) {
        ya.getPluginExtension().reportError(this.a, this.b);
    }
}
