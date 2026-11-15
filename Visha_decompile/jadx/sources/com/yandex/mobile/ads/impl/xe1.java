package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.net.MalformedURLException;
import java.net.URL;

public final class xe1 {
    public static eb2 a(wa2 wa2Var) throws xa2, IllegalArgumentException {
        y45.j(wa2Var, "verification");
        oq0 oq0VarB = wa2Var.b();
        if (oq0VarB == null || !y45.e(oq0VarB.c(), "omid")) {
            throw new xa2(wa2Var, xa2.a.c);
        }
        try {
            URL url = new URL(oq0VarB.d());
            String strD = wa2Var.d();
            String strC = wa2Var.c();
            if (strC == null || strC.length() == 0) {
                eb2 eb2VarA = eb2.a(url);
                y45.g(eb2VarA);
                return eb2VarA;
            }
            eb2 eb2VarA2 = eb2.a(strD, url, strC);
            y45.g(eb2VarA2);
            return eb2VarA2;
        } catch (MalformedURLException unused) {
            throw new xa2(wa2Var, xa2.a.d);
        }
    }
}
