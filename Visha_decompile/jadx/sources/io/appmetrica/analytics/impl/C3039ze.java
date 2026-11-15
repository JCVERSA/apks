package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrierCallback;
import io.appmetrica.analytics.impl.C3039ze;
import java.util.concurrent.TimeUnit;

public final class C3039ze implements Ac {
    public final C3037zc a;
    public final C3037zc b;

    public C3039ze(final InterfaceC2984x9 interfaceC2984x9, Fg fg, F4 f4, Le le) {
        C3037zc c3037zc = new C3037zc(fg, f4, le);
        this.a = c3037zc;
        this.b = c3037zc;
        if (c3037zc.b()) {
            return;
        }
        C2910ua.j().a().subscribe(TimeUnit.SECONDS.toMillis(O7.a.longValue()), C2910ua.j().w().a(), new ActivationBarrierCallback() {
            @Override
            public final void onWaitFinished() {
                C3039ze.a(this.a, interfaceC2984x9);
            }
        });
    }

    @Override
    public final J8 a() {
        return this.b;
    }

    public static final void a(C3039ze c3039ze, InterfaceC2984x9 interfaceC2984x9) {
        c3039ze.a.a();
        ((C2980x5) interfaceC2984x9.a()).d();
    }
}
