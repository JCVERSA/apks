package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class bo implements Consumer {
    public final String a = "WebView interface setup failed because javascript is disabled for the WebView.";

    @Override
    public final void consume(Object obj) {
        ((PublicLogger) obj).warning(this.a, new Object[0]);
    }
}
