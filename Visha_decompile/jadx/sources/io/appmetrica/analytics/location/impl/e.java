package io.appmetrica.analytics.location.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.permission.SinglePermissionStrategy;

public final class e implements s {
    @Override
    public final PermissionResolutionStrategy a(PermissionExtractor permissionExtractor) {
        return new SinglePermissionStrategy(permissionExtractor, "android.permission.ACCESS_FINE_LOCATION");
    }
}
