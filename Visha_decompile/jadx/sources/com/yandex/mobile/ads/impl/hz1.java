package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class hz1 {
    private gz1 a;

    public final gz1 a() {
        return this.a;
    }

    public final void a(gz1 gz1Var) {
        if (gz1Var == null) {
            hp0.c("Ad size can't be null or empty.", new Object[0]);
            return;
        }
        gz1 gz1Var2 = this.a;
        if (gz1Var2 == null || y45.e(gz1Var2, gz1Var)) {
            this.a = gz1Var;
        } else {
            hp0.c("Ad size can't be set twice.", new Object[0]);
        }
    }
}
