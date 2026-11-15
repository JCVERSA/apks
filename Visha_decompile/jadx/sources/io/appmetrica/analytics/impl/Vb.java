package io.appmetrica.analytics.impl;

import defpackage.e74;
import defpackage.zfb;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import kotlin.jvm.internal.Lambda;

public final class Vb extends Lambda implements e74 {
    public static final Vb a = new Vb();

    public Vb() {
        super(1);
    }

    @Override
    public final Object invoke(Object obj) {
        ((LocationControllerObserver) obj).startLocationTracking();
        return zfb.a;
    }
}
