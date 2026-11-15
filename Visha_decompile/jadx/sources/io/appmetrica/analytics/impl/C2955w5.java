package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import java.util.Arrays;

public final class C2955w5 implements PermissionStrategy {
    public final PermissionStrategy[] a;

    public C2955w5(PermissionStrategy... permissionStrategyArr) {
        this.a = permissionStrategyArr;
    }

    @Override
    public final boolean forbidUsePermission(String str) {
        for (PermissionStrategy permissionStrategy : this.a) {
            if (permissionStrategy.forbidUsePermission(str)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return "CompositePermissionStrategy(strategies=" + Arrays.toString(this.a) + ')';
    }
}
