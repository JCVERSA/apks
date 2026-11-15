package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class Ae implements Runnable {
    public final PluginErrorDetails a;
    public final De b;

    public Ae(De de, PluginErrorDetails pluginErrorDetails) {
        this.b = de;
        this.a = pluginErrorDetails;
    }

    @Override
    public final void run() {
        ((Ya) this.b.d.get()).getPluginExtension().reportUnhandledException(this.a);
    }
}
