package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.plugins.IPluginReporter;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Collection;

public final class De implements IPluginReporter {
    public final Ge a = new Ge();
    public final He b = new He();
    public final IHandlerExecutor c = C2879t4.i().e().a();
    public final Provider d;

    public De(@NonNull Provider<Ya> provider) {
        this.d = provider;
    }

    @Override
    public final void reportError(@NonNull PluginErrorDetails pluginErrorDetails, @Nullable String str) {
        Ge ge = this.a;
        ge.a.a(pluginErrorDetails);
        if (ge.c.a((Collection<Object>) (pluginErrorDetails != null ? pluginErrorDetails.getStacktrace() : null)).a) {
            this.b.getClass();
            this.c.execute(new Be(this, pluginErrorDetails, str));
        }
    }

    @Override
    public final void reportUnhandledException(@NonNull PluginErrorDetails pluginErrorDetails) {
        this.a.a.a(pluginErrorDetails);
        this.b.getClass();
        this.c.execute(new Ae(this, pluginErrorDetails));
    }

    @Override
    public final void reportError(@NonNull String str, @Nullable String str2, @Nullable PluginErrorDetails pluginErrorDetails) {
        this.a.b.a(str);
        this.b.getClass();
        this.c.execute(new Ce(this, str, str2, pluginErrorDetails));
    }
}
