package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;

public final class C2904u4 implements ClientStorageProvider {
    public final Wk a;

    public C2904u4(Wk wk) {
        this.a = wk;
    }

    @Override
    public final ModulePreferences modulePreferences(String str) {
        return new C2465cd(str, this.a);
    }
}
