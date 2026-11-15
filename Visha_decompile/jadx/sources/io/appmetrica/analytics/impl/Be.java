package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class Be implements Runnable {
    public final PluginErrorDetails a;
    public final String b;
    public final De c;

    public Be(De de, PluginErrorDetails pluginErrorDetails, String str) {
        this.c = de;
        this.a = pluginErrorDetails;
        this.b = str;
    }

    @Override
    public final void run() {
        ((Ya) this.c.d.get()).getPluginExtension().reportError(this.a, this.b);
    }
}
