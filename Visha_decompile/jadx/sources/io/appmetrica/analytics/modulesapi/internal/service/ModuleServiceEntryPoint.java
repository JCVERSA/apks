package io.appmetrica.analytics.modulesapi.internal.service;

import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerFactory;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00108\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010 \u001a\u0004\u0018\u00010\u001f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001c\u0010%\u001a\u0004\u0018\u00010$8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;", "", "T", MethodDecl.initName, "()V", "Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;", "serviceContext", "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;", "initialConfig", "Lzfb;", "initServiceSide", "(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V", "", "getIdentifier", "()Ljava/lang/String;", "identifier", "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;", "remoteConfigExtensionConfiguration", "Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;", "getRemoteConfigExtensionConfiguration", "()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;", "Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerFactory;", "moduleEventServiceHandlerFactory", "Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerFactory;", "getModuleEventServiceHandlerFactory", "()Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerFactory;", "Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;", "locationServiceExtension", "Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;", "getLocationServiceExtension", "()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;", "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;", "moduleServicesDatabase", "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;", "getModuleServicesDatabase", "()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;", "Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;", "clientConfigProvider", "Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;", "getClientConfigProvider", "()Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;", "modules-api_release"}, k = 1, mv = {1, 6, 0})
public abstract class ModuleServiceEntryPoint<T> {
    public ClientConfigProvider getClientConfigProvider() {
        return null;
    }

    public abstract String getIdentifier();

    public LocationServiceExtension getLocationServiceExtension() {
        return null;
    }

    public ModuleEventServiceHandlerFactory getModuleEventServiceHandlerFactory() {
        return null;
    }

    public ModuleServicesDatabase getModuleServicesDatabase() {
        return null;
    }

    public RemoteConfigExtensionConfiguration<T> getRemoteConfigExtensionConfiguration() {
        return null;
    }

    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<T> initialConfig) {
    }
}
