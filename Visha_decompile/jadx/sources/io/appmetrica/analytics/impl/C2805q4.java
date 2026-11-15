package io.appmetrica.analytics.impl;

import android.os.Bundle;
import defpackage.abb;
import defpackage.ky5;
import defpackage.ue3;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public final class C2805q4 {
    public final C2780p4 a = new C2780p4();
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();
    public S5 c;

    public static void a(String str, String str2, Throwable th) {
        Fj fj = AbstractC2521ej.a;
        Map mapH = ky5.h(abb.a(str, ky5.h(abb.a(str2, ue3.b(th)))));
        fj.getClass();
        fj.a(new Ej("client_module_errors", mapH));
    }

    public final void b() {
        for (ModuleClientEntryPoint moduleClientEntryPoint : this.b) {
            try {
                moduleClientEntryPoint.onActivated();
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "onActivated", th);
            }
        }
    }

    public final void a(ModuleClientEntryPoint<Object> moduleClientEntryPoint) {
        this.b.add(moduleClientEntryPoint);
    }

    public final void a(S5 s5) {
        this.c = s5;
        HashSet hashSet = new HashSet();
        for (ModuleClientEntryPoint moduleClientEntryPoint : this.b) {
            try {
                moduleClientEntryPoint.initClientSide(s5);
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "initClientSide", th);
                hashSet.add(moduleClientEntryPoint);
            }
        }
        this.b.removeAll(hashSet);
    }

    public final ModuleAdRevenueProcessor a() {
        V5 v5;
        S5 s5 = this.c;
        if (s5 == null || (v5 = ((C2456c4) s5).b) == null) {
            return null;
        }
        return v5.b;
    }

    public final void a(Bundle bundle, SdkIdentifiers sdkIdentifiers) {
        if (bundle == null) {
            return;
        }
        for (ModuleClientEntryPoint moduleClientEntryPoint : this.b) {
            try {
                ServiceConfigExtensionConfiguration serviceConfigExtensionConfiguration = moduleClientEntryPoint.getServiceConfigExtensionConfiguration();
                if (serviceConfigExtensionConfiguration != null) {
                    ServiceConfigUpdateListener serviceConfigUpdateListener = serviceConfigExtensionConfiguration.getServiceConfigUpdateListener();
                    C2780p4 c2780p4 = this.a;
                    String identifier = moduleClientEntryPoint.getIdentifier();
                    c2780p4.getClass();
                    Bundle bundle2 = bundle.getBundle(identifier);
                    C2755o4 c2755o4 = bundle2 != null ? new C2755o4(sdkIdentifiers, serviceConfigExtensionConfiguration.getBundleConverter().fromBundle(bundle2)) : null;
                    if (c2755o4 != null) {
                        serviceConfigUpdateListener.onServiceConfigUpdated(c2755o4);
                    }
                }
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "notifyModulesWithConfig", th);
            }
        }
    }
}
