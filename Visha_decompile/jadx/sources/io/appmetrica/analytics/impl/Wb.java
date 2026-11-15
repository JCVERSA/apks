package io.appmetrica.analytics.impl;

import defpackage.e74;
import defpackage.zfb;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import kotlin.jvm.internal.Lambda;

public final class Wb extends Lambda implements e74 {
    public static final Wb a = new Wb();

    public Wb() {
        super(1);
    }

    @Override
    public final Object invoke(Object obj) {
        ((LocationControllerObserver) obj).stopLocationTracking();
        return zfb.a;
    }
}
