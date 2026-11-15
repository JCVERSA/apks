package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class co implements Consumer {
    public final Throwable a;
    public final String b = "WebView interface setup failed because of an exception.";

    public co(Throwable th) {
        this.a = th;
    }

    @Override
    public final void consume(Object obj) {
        ((PublicLogger) obj).error(this.a, this.b, new Object[0]);
    }
}
