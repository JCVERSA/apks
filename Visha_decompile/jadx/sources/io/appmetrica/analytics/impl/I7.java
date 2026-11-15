package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider;

public final class I7 implements AskForPermissionStrategyModuleProvider {
    public final Od a = new Od();

    @Override
    public final PermissionStrategy getAskForPermissionStrategy() {
        return this.a;
    }
}
