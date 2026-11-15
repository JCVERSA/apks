package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.Map;

public final class wq1 {
    private final int a;
    private final ar1 b;
    private final Map<String, String> c;

    public wq1(int i, ar1 ar1Var, Map<String, String> map) {
        y45.j(ar1Var, TtmlNode.TAG_BODY);
        y45.j(map, "headers");
        this.a = i;
        this.b = ar1Var;
        this.c = map;
    }

    public final ar1 a() {
        return this.b;
    }

    public final Map<String, String> b() {
        return this.c;
    }

    public final int c() {
        return this.a;
    }
}
