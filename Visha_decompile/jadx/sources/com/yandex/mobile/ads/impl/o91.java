package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class o91 {
    private final vg a;

    public o91(vg vgVar) {
        y45.j(vgVar, "assetValueProvider");
        this.a = vgVar;
    }

    public final n91 a() {
        ic1 ic1Var;
        ex0 ex0VarA = this.a.a();
        db1 db1Var = null;
        if (ex0VarA != null) {
            db1 db1Var2 = ex0VarA.c() != null ? new db1() : null;
            ic1Var = ex0VarA.b() != null ? new ic1() : null;
            db1Var = db1Var2;
        } else {
            ic1Var = null;
        }
        return new n91(db1Var, ic1Var);
    }
}
