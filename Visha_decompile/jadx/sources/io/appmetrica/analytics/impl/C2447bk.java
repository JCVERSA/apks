package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import defpackage.abb;
import defpackage.d81;
import defpackage.ky5;
import defpackage.my5;
import defpackage.ue3;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider;
import io.appmetrica.analytics.modulesapi.internal.service.LocationServiceExtension;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Pair;

public final class C2447bk implements Vc, Ml, AskForPermissionStrategyModuleProvider {
    public final String a = "rp";
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public volatile AskForPermissionStrategyModuleProvider c = new I7();

    @Override
    public final void a(Hl hl) {
        SdkIdentifiers sdkIdentifiers = new SdkIdentifiers(hl.e(), hl.a(), hl.b());
        C3041zg c3041zg = new C3041zg(hl.c(), hl.d());
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : this.b) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleServiceEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration != null) {
                remoteConfigExtensionConfiguration.getRemoteConfigUpdateListener().onRemoteConfigUpdated(new C2422ak(sdkIdentifiers, c3041zg, hl.B.get(moduleServiceEntryPoint.getIdentifier())));
            }
        }
    }

    @Override
    public final List<ModuleServicesDatabase> b() {
        Object objValueOf;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList<ModuleServiceEntryPoint> copyOnWriteArrayList = this.b;
        ArrayList arrayList2 = new ArrayList();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : copyOnWriteArrayList) {
            try {
                ModuleServicesDatabase moduleServicesDatabase = moduleServiceEntryPoint.getModuleServicesDatabase();
                objValueOf = moduleServicesDatabase != null ? Boolean.valueOf(arrayList.add(moduleServicesDatabase)) : null;
            } catch (Throwable th) {
                hashSet.add(moduleServiceEntryPoint);
                String identifier = moduleServiceEntryPoint.getIdentifier();
                Fj fj = AbstractC2521ej.a;
                Map mapH = ky5.h(abb.a(identifier, ky5.h(abb.a("db", ue3.b(th)))));
                fj.getClass();
                fj.a(new Ej("service_module_errors", mapH));
                objValueOf = zfb.a;
            }
            if (objValueOf != null) {
                arrayList2.add(objValueOf);
            }
        }
        this.b.removeAll(hashSet);
        return arrayList;
    }

    @Override
    public final Map<String, C2490dd> c() {
        CopyOnWriteArrayList<ModuleServiceEntryPoint> copyOnWriteArrayList = this.b;
        ArrayList arrayList = new ArrayList();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleServiceEntryPoint.getRemoteConfigExtensionConfiguration();
            Pair pairA = remoteConfigExtensionConfiguration != null ? abb.a(moduleServiceEntryPoint.getIdentifier(), new C2490dd(remoteConfigExtensionConfiguration)) : null;
            if (pairA != null) {
                arrayList.add(pairA);
            }
        }
        return kotlin.collections.a.y(arrayList);
    }

    @Override
    public final Map<String, Integer> d() {
        List listK;
        Map<String, Integer> blocks;
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = ((ModuleServiceEntryPoint) it.next()).getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration == null || (blocks = remoteConfigExtensionConfiguration.getBlocks()) == null || (listK = my5.E(blocks)) == null) {
                listK = y71.k();
            }
            d81.C(arrayList, listK);
        }
        return kotlin.collections.a.y(arrayList);
    }

    @Override
    public final List<Consumer<Location>> e() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            LocationServiceExtension locationServiceExtension = ((ModuleServiceEntryPoint) it.next()).getLocationServiceExtension();
            Consumer<Location> locationConsumer = locationServiceExtension != null ? locationServiceExtension.getLocationConsumer() : null;
            if (locationConsumer != null) {
                arrayList.add(locationConsumer);
            }
        }
        return arrayList;
    }

    @Override
    public final ModuleLocationSourcesServiceController f() {
        ModuleLocationSourcesServiceController locationSourcesController;
        Iterator it = this.b.iterator();
        do {
            locationSourcesController = null;
            if (!it.hasNext()) {
                break;
            }
            LocationServiceExtension locationServiceExtension = ((ModuleServiceEntryPoint) it.next()).getLocationServiceExtension();
            if (locationServiceExtension != null) {
                locationSourcesController = locationServiceExtension.getLocationSourcesController();
            }
        } while (locationSourcesController == null);
        return locationSourcesController;
    }

    @Override
    public final Toggle g() {
        Toggle locationControllerAppStateToggle;
        Iterator it = this.b.iterator();
        do {
            locationControllerAppStateToggle = null;
            if (!it.hasNext()) {
                break;
            }
            LocationServiceExtension locationServiceExtension = ((ModuleServiceEntryPoint) it.next()).getLocationServiceExtension();
            if (locationServiceExtension != null) {
                locationControllerAppStateToggle = locationServiceExtension.getLocationControllerAppStateToggle();
            }
        } while (locationControllerAppStateToggle == null);
        return locationControllerAppStateToggle;
    }

    @Override
    public final PermissionStrategy getAskForPermissionStrategy() {
        return this.c.getAskForPermissionStrategy();
    }

    @Override
    public final List<String> h() {
        List<String> listK;
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        ArrayList arrayList = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = ((ModuleServiceEntryPoint) it.next()).getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration == null || (listK = remoteConfigExtensionConfiguration.getFeatures()) == null) {
                listK = y71.k();
            }
            d81.C(arrayList, listK);
        }
        return arrayList;
    }

    public final Bundle i() {
        Bundle bundle = new Bundle();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : this.b) {
            ClientConfigProvider clientConfigProvider = moduleServiceEntryPoint.getClientConfigProvider();
            Bundle configBundleForClient = clientConfigProvider != null ? clientConfigProvider.getConfigBundleForClient() : null;
            if (configBundleForClient != null) {
                bundle.putBundle(moduleServiceEntryPoint.getIdentifier(), configBundleForClient);
            }
        }
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ModuleServiceEntryPoint<Object> moduleServiceEntryPoint) {
        this.b.add(moduleServiceEntryPoint);
        if (y45.e(this.a, moduleServiceEntryPoint.getIdentifier()) && (moduleServiceEntryPoint instanceof AskForPermissionStrategyModuleProvider)) {
            this.c = (AskForPermissionStrategyModuleProvider) moduleServiceEntryPoint;
        }
    }

    public final void a(ServiceContext serviceContext, Hl hl) {
        HashSet hashSet = new HashSet();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : this.b) {
            try {
                moduleServiceEntryPoint.initServiceSide(serviceContext, new C2422ak(new SdkIdentifiers(hl.d, hl.a, hl.b), new C3041zg(hl.v, hl.u), hl.B.get(moduleServiceEntryPoint.getIdentifier())));
                ModuleEventServiceHandlerFactory moduleEventServiceHandlerFactory = moduleServiceEntryPoint.getModuleEventServiceHandlerFactory();
                if (moduleEventServiceHandlerFactory != null) {
                    Zc zc = C2910ua.E.t;
                    String identifier = moduleServiceEntryPoint.getIdentifier();
                    synchronized (zc) {
                        try {
                            zc.a.put(identifier, moduleEventServiceHandlerFactory);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    continue;
                }
            } catch (Throwable th2) {
                String identifier2 = moduleServiceEntryPoint.getIdentifier();
                Fj fj = AbstractC2521ej.a;
                Map mapH = ky5.h(abb.a(identifier2, ky5.h(abb.a("init", ue3.b(th2)))));
                fj.getClass();
                fj.a(new Ej("service_module_errors", mapH));
                hashSet.add(moduleServiceEntryPoint);
            }
        }
        this.b.removeAll(hashSet);
    }
}
