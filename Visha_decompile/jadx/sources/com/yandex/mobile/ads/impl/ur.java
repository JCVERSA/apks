package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;

public final class ur {
    private final pw1 a;
    private final iq b;

    public ur(pw1 pw1Var, iq iqVar) {
        y45.j(pw1Var, "sdkSettings");
        y45.j(iqVar, "cmpSettings");
        this.a = pw1Var;
        this.b = iqVar;
    }

    public final ax a() {
        String strC;
        String strA;
        boolean zD = this.a.d();
        Boolean boolF = this.a.f();
        Boolean boolJ = this.a.j();
        String strB = this.b.b();
        return new ax(zD, boolF, boolJ, ((strB == null || j1a.o0(strB)) && ((strC = this.b.c()) == null || j1a.o0(strC)) && ((strA = this.b.a()) == null || j1a.o0(strA))) ? false : true);
    }
}
