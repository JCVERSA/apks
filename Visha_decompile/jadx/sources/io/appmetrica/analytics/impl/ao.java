package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class ao implements Consumer {
    public final String a = "WebView interface setup is successful.";

    @Override
    public final void consume(Object obj) {
        ((PublicLogger) obj).info(this.a, new Object[0]);
    }
}
