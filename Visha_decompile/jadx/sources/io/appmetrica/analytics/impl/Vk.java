package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.services.ContextPermissionChecker;

public final class Vk implements PermissionExtractor {
    public static final String b = "[SimplePermissionExtractor]";
    public final PermissionStrategy a;

    public Vk(@NonNull PermissionStrategy permissionStrategy) {
        this.a = permissionStrategy;
    }

    @NonNull
    @VisibleForTesting
    public final PermissionStrategy a() {
        return this.a;
    }

    @Override
    public final boolean hasPermission(@NonNull Context context, @NonNull String str) {
        if (this.a.forbidUsePermission(str)) {
            return false;
        }
        return ContextPermissionChecker.hasPermission(context, str);
    }
}
