package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerContext;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter;

public final class C2440bd implements ModuleEventServiceHandlerContext {
    public final ModulePreferences a;
    public final ModulePreferences b;
    public final ModuleEventServiceHandlerReporter c;

    public C2440bd(ModulePreferences modulePreferences, ModulePreferences modulePreferences2, ModuleEventServiceHandlerReporter moduleEventServiceHandlerReporter) {
        this.a = modulePreferences;
        this.b = modulePreferences2;
        this.c = moduleEventServiceHandlerReporter;
    }

    @Override
    public final ModuleEventServiceHandlerReporter getEventReporter() {
        return this.c;
    }

    @Override
    public final ModulePreferences getLegacyModulePreferences() {
        return this.b;
    }

    @Override
    public final ModulePreferences getModulePreferences() {
        return this.a;
    }
}
