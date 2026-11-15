package io.appmetrica.analytics.impl;

public final class Q4 {
    public final Kb a;

    public Q4() {
        this(C2910ua.j().k());
    }

    public static V4 a(O4 o4) {
        return new V4(new T4(o4), o4);
    }

    public Q4(Kb kb) {
        this.a = kb;
    }

    public final Jm a(O4 o4, C2499dm c2499dm) {
        Jm jm = new Jm(o4, new C2991xg(c2499dm));
        Kb kb = this.a;
        synchronized (kb) {
            kb.c.add(jm);
        }
        return jm;
    }
}
