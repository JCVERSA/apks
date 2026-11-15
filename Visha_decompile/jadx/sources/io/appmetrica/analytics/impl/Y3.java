package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.toggle.SimpleThreadSafeToggle;

public final class Y3 extends SimpleThreadSafeToggle {
    public final Oe a;

    public Y3(Oe oe) {
        super(oe.e(), "[ClientApiTrackingStatusToggle]");
        this.a = oe;
    }

    public final void a(boolean z) {
        updateState(z);
        this.a.f(z);
    }
}
