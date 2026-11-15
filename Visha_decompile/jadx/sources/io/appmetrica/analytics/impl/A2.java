package io.appmetrica.analytics.impl;

import android.location.LocationManager;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;

public final class A2 implements FunctionWithThrowable {
    @Override
    public final Object apply(Object obj) {
        return ((LocationManager) obj).getProviders(true);
    }
}
