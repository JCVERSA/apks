package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

public class Jm implements Vj, B9 {
    public final La a;
    public final InterfaceC2722ml b;
    public final AtomicBoolean c = new AtomicBoolean(false);

    public Jm(La la, InterfaceC2722ml interfaceC2722ml) {
        this.a = la;
        this.b = interfaceC2722ml;
        Objects.toString(la.b());
    }

    public void a() {
    }

    public final void b() {
        if (this.c.get()) {
            return;
        }
        e();
        a();
    }

    public final La c() {
        return this.a;
    }

    public final boolean d() {
        return this.c.get();
    }

    public void e() {
        this.b.a();
    }

    @Override
    public final void onCreate() {
        this.c.compareAndSet(true, false);
    }

    @Override
    public final void onDestroy() {
        if (this.c.compareAndSet(false, true)) {
            a();
        }
    }

    public final void a(NetworkTask networkTask) {
        C2910ua.E.getClass();
        NetworkServiceLocator.getInstance().getNetworkCore().startTask(networkTask);
    }
}
