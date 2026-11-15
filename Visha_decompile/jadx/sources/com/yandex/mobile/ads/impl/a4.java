package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;

public final class a4 {
    public static final void a(String str, ArrayList arrayList) {
        y45.j(str, "adType");
        y45.j(arrayList, "errors");
        if (arrayList.isEmpty()) {
            return;
        }
        hp0.a(z0.a(new Object[]{str, defpackage.i81.y0(arrayList, "\n - ", "\n - ", null, 0, null, null, 60, null)}, 2, "Found following errors for %s ad type: %s", "format(...)"), new Object[0]);
    }

    public static final void a(String str) {
        y45.j(str, "adConfigurationInfo");
        hp0.b(z0.a(new Object[]{str}, 1, "Ad type %s was integrated successfully", "format(...)"), new Object[0]);
    }
}
