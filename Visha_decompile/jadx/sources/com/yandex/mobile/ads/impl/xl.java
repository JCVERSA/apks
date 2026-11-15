package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xl {
    private final fw0 a;

    public xl(fw0 fw0Var) {
        y45.j(fw0Var, "referenceMediaFileInfo");
        this.a = fw0Var;
    }

    public final int a(ew0 ew0Var) {
        y45.j(ew0Var, "mediaFile");
        int iB = ew0Var.b();
        if (iB != 0) {
            return iB;
        }
        return (int) (((ew0Var.d() * ew0Var.h()) / (this.a.b() * this.a.c())) * this.a.a());
    }
}
