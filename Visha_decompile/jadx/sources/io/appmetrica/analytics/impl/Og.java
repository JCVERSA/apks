package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;

public final class Og extends Gg {
    public final Un b;

    public Og(@NonNull C2706m5 c2706m5) {
        this(c2706m5, c2706m5.t());
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        C2706m5 c2706m5 = this.a;
        if (this.b.c()) {
            return false;
        }
        if (!this.b.d()) {
            C2810q9 c2810q9 = c2706m5.n;
            c2810q9.c.b(C2408a6.a(c2408a6, EnumC2588hb.EVENT_TYPE_FIRST_ACTIVATION));
        }
        Un un = this.b;
        synchronized (un) {
            Vn vn = un.a;
            vn.a(vn.a().put("first_event_done", true));
        }
        return false;
    }

    public Og(C2706m5 c2706m5, Un un) {
        super(c2706m5);
        this.b = un;
    }
}
