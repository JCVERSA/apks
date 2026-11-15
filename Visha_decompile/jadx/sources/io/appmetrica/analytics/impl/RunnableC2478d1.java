package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ExternalAttribution;

public final class RunnableC2478d1 implements Runnable {
    public final ExternalAttribution a;
    public final C2702m1 b;

    public RunnableC2478d1(C2702m1 c2702m1, ExternalAttribution externalAttribution) {
        this.b = c2702m1;
        this.a = externalAttribution;
    }

    @Override
    public final void run() {
        C2702m1.a(this.b).a(this.a);
    }
}
