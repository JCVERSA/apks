package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.impl.C2763oc;

public final class C2763oc {
    public int a = 5;
    public final C2501e b;

    public C2763oc(InterfaceC2402a0 interfaceC2402a0) {
        this.b = new C2501e(new Ib(interfaceC2402a0));
    }

    public static final void b(AnrListener anrListener) {
        anrListener.onAppNotResponding();
    }

    public final void a(final AnrListener anrListener) {
        C2501e c2501e = this.b;
        c2501e.a.add(new InterfaceC2451c() {
            @Override
            public final void onAppNotResponding() {
                C2763oc.b(anrListener);
            }
        });
    }
}
