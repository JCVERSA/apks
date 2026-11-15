package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class Ce implements Runnable {
    public final String a;
    public final String b;
    public final PluginErrorDetails c;
    public final De d;

    public Ce(De de, String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.d = de;
        this.a = str;
        this.b = str2;
        this.c = pluginErrorDetails;
    }

    @Override
    public final void run() {
        ((Ya) this.d.d.get()).getPluginExtension().reportError(this.a, this.b, this.c);
    }
}
