package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class C2844rj implements Xa {
    public final PluginErrorDetails a;

    public C2844rj(PluginErrorDetails pluginErrorDetails) {
        this.a = pluginErrorDetails;
    }

    @Override
    public final void a(Ya ya) {
        ya.getPluginExtension().reportUnhandledException(this.a);
    }
}
