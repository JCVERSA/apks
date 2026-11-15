package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class xy0 {
    private final Context a;
    private final rx0<?, ?> b;
    private final Map<String, Object> c;

    public xy0(Context context, rx0 rx0Var, LinkedHashMap linkedHashMap) {
        y45.j(context, "context");
        y45.j(rx0Var, "mediatedAdController");
        y45.j(linkedHashMap, "mediatedReportData");
        this.a = context;
        this.b = rx0Var;
        this.c = linkedHashMap;
    }

    public final void a() {
        this.b.e(this.a, this.c);
    }
}
