package com.yandex.mobile.ads.impl;

import defpackage.l1a;
import defpackage.y45;
import org.apache.commons.io.IOUtils;

public final class jy {
    private static final String b = "https://mobile.yandexadexchange.net";
    private final o50 a;

    public jy(o50 o50Var) {
        y45.j(o50Var, "environmentConfiguration");
        this.a = o50Var;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        String strA = this.a.a();
        if (strA == null) {
            strA = b;
        }
        sb.append(strA);
        Character chR1 = l1a.r1(sb);
        if (chR1 == null || chR1.charValue() != '/') {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        sb.append("v1/debugpanel");
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }
}
