package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class hf {
    public static boolean a(df dfVar) {
        y45.j(dfVar, "appMetricaIdentifiers");
        String strA = dfVar.a();
        String strB = dfVar.b();
        String strC = dfVar.c();
        if (!(strC == null || strC.length() == 0)) {
            if (!(strA == null || strA.length() == 0)) {
                if (!(strB == null || strB.length() == 0)) {
                    return true;
                }
            }
        }
        return false;
    }
}
