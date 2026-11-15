package com.yandex.mobile.ads.impl;

import android.webkit.WebView;
import defpackage.j1a;
import defpackage.y45;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public final class uj2 {
    private final ll1 a;

    public uj2(ll1 ll1Var) {
        y45.j(ll1Var, "processNameProvider");
        this.a = ll1Var;
    }

    public final void a() {
        String strA = this.a.a();
        String strV0 = strA != null ? j1a.V0(strA, StringUtils.PROCESS_POSTFIX_DELIMITER, "") : null;
        if (strV0 == null || strV0.length() <= 0) {
            return;
        }
        try {
            WebView.setDataDirectorySuffix(strV0);
        } catch (Throwable unused) {
        }
    }
}
