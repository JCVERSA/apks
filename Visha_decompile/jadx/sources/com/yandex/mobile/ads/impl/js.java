package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.y45;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.Map;

public final class js {
    private static final Map<String, is> a = kotlin.collections.a.p(abb.a("html", is.b), abb.a(PluginErrorDetails.Platform.NATIVE, is.c));

    public static is a(Map map) {
        y45.j(map, "headers");
        return a.get(nf0.a(map, vh0.v));
    }
}
