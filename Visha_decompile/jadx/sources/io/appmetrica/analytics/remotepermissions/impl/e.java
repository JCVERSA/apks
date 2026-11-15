package io.appmetrica.analytics.remotepermissions.impl;

import defpackage.ye9;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import java.util.Set;

public final class e implements PermissionStrategy {
    public Set a = ye9.f();

    public final synchronized void a(Set<String> set) {
        this.a = set;
    }

    @Override
    public final synchronized boolean forbidUsePermission(String str) {
        return !this.a.contains(str);
    }
}
