package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class C2894tj implements Xa {
    public final String a;
    public final String b;
    public final PluginErrorDetails c;

    public C2894tj(String str, String str2, PluginErrorDetails pluginErrorDetails) {
        this.a = str;
        this.b = str2;
        this.c = pluginErrorDetails;
    }

    @Override
    public final void a(Ya ya) {
        ya.getPluginExtension().reportError(this.a, this.b, this.c);
    }
}
