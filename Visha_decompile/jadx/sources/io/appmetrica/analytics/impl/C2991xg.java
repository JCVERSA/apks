package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;

public final class C2991xg implements InterfaceC2722ml {
    public final C2499dm a;

    public C2991xg(@NonNull C2499dm c2499dm) {
        this.a = c2499dm;
    }

    @Override
    public final void a() {
        NetworkTask networkTaskC = this.a.c();
        if (networkTaskC != null) {
            C2910ua.E.getClass();
            NetworkServiceLocator.getInstance().getNetworkCore().startTask(networkTaskC);
        }
    }
}
