package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;
import java.util.List;

public final class b22 {
    private final x9 a = new x9();

    public final String a(String str, w9 w9Var) {
        y45.j(str, "sponsoredText");
        y45.j(w9Var, "adTuneInfo");
        List listQ = defpackage.y71.q(str);
        this.a.getClass();
        String strA = x9.a(w9Var);
        if (!j1a.o0(strA)) {
            listQ.add(strA);
        }
        return defpackage.i81.y0(listQ, " · ", null, null, 0, null, null, 62, null);
    }
}
