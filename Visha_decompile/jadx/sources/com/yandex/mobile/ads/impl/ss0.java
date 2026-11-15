package com.yandex.mobile.ads.impl;

import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.List;

public final class ss0 {
    public static final void a(ps0 ps0Var, String str, List<String> list) {
        y45.j(ps0Var, "<this>");
        y45.j(str, "key");
        String strY0 = null;
        if (list != null) {
            List<String> list2 = !list.isEmpty() ? list : null;
            if (list2 != null) {
                strY0 = defpackage.i81.y0(list2, StringUtils.COMMA, null, null, 0, null, null, 62, null);
            }
        }
        ps0Var.a(str, strY0);
    }
}
