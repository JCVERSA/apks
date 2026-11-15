package io.appmetrica.analytics.impl;

import defpackage.y71;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import java.util.List;

public final class Zb implements PermissionStrategy, LocationControllerObserver {
    public static final Yb b = new Yb();
    public static final List c = y71.n("android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION");
    public volatile boolean a;

    @Override
    public final boolean forbidUsePermission(String str) {
        if (c.contains(str)) {
            return !this.a;
        }
        return false;
    }

    @Override
    public final void startLocationTracking() {
        this.a = true;
    }

    @Override
    public final void stopLocationTracking() {
        this.a = false;
    }

    public final String toString() {
        return "LocationFlagStrategy(enabled=" + this.a + ", locationPermissions=" + c + ')';
    }
}
