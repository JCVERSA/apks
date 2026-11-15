package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;

public final class C2456c4 implements S5 {
    public final Context a;
    public final V5 b = new V5(new C2975x0(), new C2930v5());
    public final C2904u4 c = new C2904u4(C2879t4.i().b(getContext()));
    public final C2563gb d = new C2563gb();

    public C2456c4(Context context) {
        this.a = context;
    }

    @Override
    public final ClientStorageProvider getClientStorageProvider() {
        return this.c;
    }

    @Override
    public final Context getContext() {
        return this.a;
    }

    @Override
    public final InternalClientModuleFacade getInternalClientModuleFacade() {
        return this.d;
    }

    @Override
    public final U5 getModuleAdRevenueContext() {
        return this.b;
    }

    @Override
    public final ModuleAdRevenueContext getModuleAdRevenueContext() {
        return this.b;
    }
}
