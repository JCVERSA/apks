package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ModuleEvent;
import io.appmetrica.analytics.ModulesFacade;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent;

public final class C2563gb implements InternalClientModuleFacade {
    @Override
    public final void reportEvent(InternalModuleEvent internalModuleEvent) {
        ModuleEvent.Builder builderWithValue = ModuleEvent.newBuilder(internalModuleEvent.getType()).withName(internalModuleEvent.getName()).withValue(internalModuleEvent.getOrg.mozilla.javascript.ES6Iterator.VALUE_PROPERTY java.lang.String());
        Integer serviceDataReporterType = internalModuleEvent.getServiceDataReporterType();
        if (serviceDataReporterType != null) {
            builderWithValue.withServiceDataReporterType(serviceDataReporterType.intValue());
        }
        ModulesFacade.reportEvent(builderWithValue.withExtras(internalModuleEvent.getExtras()).withAttributes(internalModuleEvent.getAttributes()).withEnvironment(internalModuleEvent.getEnvironment()).build());
    }
}
