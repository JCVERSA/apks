package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;

public final class Od implements PermissionStrategy {
    @Override
    public final boolean forbidUsePermission(@NonNull String str) {
        return false;
    }

    public final String toString() {
        return "AlwaysAskForPermissionStrategy{always allow permission}";
    }
}
