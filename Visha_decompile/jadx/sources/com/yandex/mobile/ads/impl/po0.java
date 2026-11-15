package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class po0 {
    private final ft a;
    private final oo0 b;

    public po0(ft ftVar) {
        y45.j(ftVar, "instreamAdBinder");
        this.a = ftVar;
        this.b = oo0.c.a();
    }

    public final void a(mu muVar) {
        y45.j(muVar, "player");
        ft ftVarA = this.b.a(muVar);
        if (y45.e(this.a, ftVarA)) {
            return;
        }
        if (ftVarA != null) {
            ftVarA.a();
        }
        this.b.a(muVar, this.a);
    }

    public final void b(mu muVar) {
        y45.j(muVar, "player");
        this.b.b(muVar);
    }
}
