package io.appmetrica.analytics.impl;

import java.util.concurrent.TimeUnit;

public final class Ug extends Gg {
    public Ug(C2706m5 c2706m5) {
        super(c2706m5);
    }

    @Override
    public final boolean a(C2408a6 c2408a6) {
        C2597hk c2597hkB;
        C2995xk c2995xk;
        C2810q9 c2810q9 = this.a.n;
        C2945vk c2945vk = c2810q9.c;
        if (c2945vk.g == 0) {
            c2597hkB = c2945vk.d.b();
            if (c2597hkB != null && c2597hkB.a(c2408a6.i) && (c2597hkB = c2945vk.e.b()) != null && c2597hkB.a(c2408a6.i)) {
                c2597hkB = null;
            }
        } else {
            c2597hkB = c2945vk.f;
        }
        if (c2597hkB != null) {
            c2995xk = new C2995xk();
            c2995xk.a = c2597hkB.d;
            long andIncrement = c2597hkB.f.getAndIncrement();
            C3020yk c3020yk = c2597hkB.b;
            c3020yk.a(C3020yk.g, Long.valueOf(c2597hkB.f.get()));
            c3020yk.b();
            c2995xk.b = andIncrement;
            c2995xk.c = TimeUnit.MILLISECONDS.toSeconds(c2597hkB.j);
            c2995xk.d = c2597hkB.c.a;
        } else {
            long j = c2408a6.j;
            long jA = c2945vk.b.a();
            S6 s6 = c2945vk.a.e;
            EnumC3045zk enumC3045zk = EnumC3045zk.BACKGROUND;
            s6.a(jA, enumC3045zk, j);
            C2995xk c2995xk2 = new C2995xk();
            c2995xk2.a = jA;
            c2995xk2.d = enumC3045zk;
            c2995xk2.b = 0L;
            c2995xk2.c = 0L;
            c2995xk = c2995xk2;
        }
        c2810q9.a(c2408a6, c2995xk);
        return true;
    }
}
