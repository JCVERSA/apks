package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class as1 {
    public static yc0 a(yl1 yl1Var, n91 n91Var, f52 f52Var) {
        y45.j(yl1Var, "progressListener");
        y45.j(n91Var, "nativeMediaContent");
        y45.j(f52Var, "timeProviderContainer");
        db1 db1VarA = n91Var.a();
        ic1 ic1VarB = n91Var.b();
        if (db1VarA != null) {
            return new rb1(db1VarA, yl1Var, f52Var, f52Var.e(), f52Var.a());
        }
        if (ic1VarB != null) {
            return null;
        }
        int i = mg1.a;
        return new e91(yl1Var, f52Var, mg1.a.a(false), f52Var.e(), f52Var.a(), f52Var.d());
    }
}
