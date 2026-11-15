package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.impl.C2540fd;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleObserver;

public final class C2540fd implements ModuleServiceLifecycleController {
    public final P1 a;

    public C2540fd(P1 p1) {
        this.a = p1;
    }

    public static final void a(ModuleServiceLifecycleObserver moduleServiceLifecycleObserver, Intent intent) {
        moduleServiceLifecycleObserver.onFirstClientConnected();
    }

    public static final void b(ModuleServiceLifecycleObserver moduleServiceLifecycleObserver, Intent intent) {
        moduleServiceLifecycleObserver.onAllClientsDisconnected();
    }

    @Override
    public final void registerObserver(final ModuleServiceLifecycleObserver moduleServiceLifecycleObserver) {
        this.a.b(new O1() {
            @Override
            public final void a(Intent intent) {
                C2540fd.a(moduleServiceLifecycleObserver, intent);
            }
        });
        this.a.a(new O1() {
            @Override
            public final void a(Intent intent) {
                C2540fd.b(moduleServiceLifecycleObserver, intent);
            }
        });
    }
}
