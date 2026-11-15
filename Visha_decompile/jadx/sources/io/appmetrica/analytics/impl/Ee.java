package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;

public final class Ee implements IPluginReporter {
    @Override
    public final void reportError(PluginErrorDetails pluginErrorDetails, String str) {
    }

    @Override
    public final void reportUnhandledException(PluginErrorDetails pluginErrorDetails) {
    }

    @Override
    public final void reportError(String str, String str2, PluginErrorDetails pluginErrorDetails) {
    }
}
