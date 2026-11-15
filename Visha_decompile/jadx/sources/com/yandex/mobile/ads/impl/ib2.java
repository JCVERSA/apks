package com.yandex.mobile.ads.impl;

import defpackage.f1a;
import defpackage.j1a;
import defpackage.y45;
import java.util.List;

public final class ib2 {
    public static hb2 a(String str) {
        Integer numR;
        y45.j(str, "versionNameStr");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) == '-') {
                str = str.substring(0, i);
                y45.i(str, "substring(...)");
                break;
            }
        }
        List listN0 = j1a.N0(str, new char[]{'.'}, false, 0, 6, null);
        String str2 = (String) defpackage.i81.r0(listN0, 0);
        if (str2 == null || (numR = f1a.r(str2)) == null) {
            return null;
        }
        int iIntValue = numR.intValue();
        Integer numR2 = f1a.r((String) (1 <= defpackage.y71.m(listN0) ? listN0.get(1) : "0"));
        if (numR2 == null) {
            return null;
        }
        int iIntValue2 = numR2.intValue();
        Integer numR3 = f1a.r((String) (2 <= defpackage.y71.m(listN0) ? listN0.get(2) : "0"));
        if (numR3 != null) {
            return new hb2(iIntValue, iIntValue2, numR3.intValue());
        }
        return null;
    }
}
