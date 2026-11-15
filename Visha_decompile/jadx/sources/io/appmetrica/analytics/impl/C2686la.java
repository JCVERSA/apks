package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import java.util.Iterator;

public final class C2686la {
    public static final C2686la d = new C2686la();
    public final C2863sd a = new C2863sd();
    public final ServiceComponentsInitializer b = Mj.a();
    public boolean c = false;

    public final void a(Context context) {
        C2910ua.a(context);
        this.b.onCreate(context);
        this.a.getClass();
        Iterator it = C2910ua.E.s.a().iterator();
        while (it.hasNext()) {
            Object objLoadAndInstantiateClassWithDefaultConstructor = ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor((String) it.next(), ModuleServiceEntryPoint.class);
            if (objLoadAndInstantiateClassWithDefaultConstructor != null) {
                C2910ua.E.o().a((ModuleServiceEntryPoint<Object>) objLoadAndInstantiateClassWithDefaultConstructor);
            }
        }
        new Xj(C2910ua.j().B().b()).a(context);
        C2910ua.E.p().a();
    }

    public final void b(Context context) {
        if (this.c) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.c) {
                    a(context);
                    this.c = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
