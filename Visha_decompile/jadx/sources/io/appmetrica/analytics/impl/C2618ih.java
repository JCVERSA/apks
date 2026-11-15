package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;

public final class C2618ih extends Gg {
    public C2618ih(C2706m5 c2706m5) {
        super(c2706m5);
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        ((C2980x5) this.a.p).d();
        C2945vk c2945vk = this.a.j;
        synchronized (c2945vk) {
            try {
                C2597hk c2597hkB = c2945vk.b(c2408a6);
                if (c2597hkB.g) {
                    c2597hkB.g = false;
                    C3020yk c3020yk = c2597hkB.b;
                    c3020yk.a(C3020yk.i, Boolean.FALSE);
                    c3020yk.b();
                }
                if (c2945vk.g != 1) {
                    c2945vk.a(c2945vk.f, c2408a6);
                }
                c2945vk.g = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
        return false;
    }
}
