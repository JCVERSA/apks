package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import java.util.Iterator;

public final class C2863sd {
    public static void a() {
        Iterator it = C2879t4.i().m.a().iterator();
        while (it.hasNext()) {
            Object objLoadAndInstantiateClassWithDefaultConstructor = ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor((String) it.next(), ModuleClientEntryPoint.class);
            if (objLoadAndInstantiateClassWithDefaultConstructor != null) {
                C2879t4.i().k().b.add((ModuleClientEntryPoint) objLoadAndInstantiateClassWithDefaultConstructor);
            }
        }
    }
}
