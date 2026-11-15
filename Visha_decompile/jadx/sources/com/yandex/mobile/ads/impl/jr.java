package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.LinkedHashMap;

public final class jr {
    private final of1 a;

    public jr() {
        this(new of1());
    }

    public final pp1 a(o3 o3Var) {
        String str;
        y45.j(o3Var, "adConfiguration");
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        of1 of1Var = this.a;
        int iO = o3Var.o();
        of1Var.getClass();
        if (iO != 1) {
            str = iO != 2 ? "undefined" : "landscape";
        } else {
            str = "portrait";
        }
        pp1Var.b(str, "orientation");
        return pp1Var;
    }

    public jr(of1 of1Var) {
        y45.j(of1Var, "orientationNameProvider");
        this.a = of1Var;
    }
}
