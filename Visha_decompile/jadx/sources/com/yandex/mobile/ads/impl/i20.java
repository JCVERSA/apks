package com.yandex.mobile.ads.impl;

import com.yandex.div2.DivExtension;
import defpackage.y45;
import java.util.List;

public final class i20 {
    public static DivExtension a(defpackage.og2 og2Var, String str) {
        y45.j(og2Var, "divBase");
        y45.j(str, "extensionId");
        List<DivExtension> extensions = og2Var.getExtensions();
        if (extensions == null) {
            return null;
        }
        for (DivExtension divExtension : extensions) {
            if (y45.e(str, divExtension.a)) {
                return divExtension;
            }
        }
        return null;
    }
}
