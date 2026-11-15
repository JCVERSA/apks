package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class i01 {
    private static final List<String> a = defpackage.y71.k();

    public static boolean a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "adapterName");
        return !a.contains(str) || x80.a(context, w80.d);
    }
}
