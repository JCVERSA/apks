package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;

public final class fz0 {
    private final ib2 a;

    public fz0(ib2 ib2Var) {
        y45.j(ib2Var, "versionParser");
        this.a = ib2Var;
    }

    public final boolean a(String str, String str2) {
        y45.j(str, "current");
        if (str2 == null || j1a.o0(str2)) {
            return true;
        }
        this.a.getClass();
        hb2 hb2VarA = ib2.a(str);
        if (hb2VarA == null) {
            return true;
        }
        this.a.getClass();
        hb2 hb2VarA2 = ib2.a(str2);
        return hb2VarA2 == null || hb2VarA.compareTo(hb2VarA2) >= 0;
    }
}
