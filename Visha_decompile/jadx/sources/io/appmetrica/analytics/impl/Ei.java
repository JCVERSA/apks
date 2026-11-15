package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public final class Ei {
    public final Revenue a;
    public final C2972wm b;
    public final Em c;
    public final Em d;
    public final PublicLogger e;

    public Ei(Revenue revenue, PublicLogger publicLogger) {
        this.e = publicLogger;
        this.a = revenue;
        this.b = new C2972wm(30720, "revenue payload", publicLogger);
        this.c = new Em(new C2972wm(184320, "receipt data", publicLogger), "<truncated data was not sent, exceeded the limit of 180kb>");
        this.d = new Em(new C3022ym(1000, "receipt signature", publicLogger), "<truncated data was not sent, exceeded the limit of 180kb>");
    }
}
