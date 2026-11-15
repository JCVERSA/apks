package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class un1 {
    private final Map<String, String> a;
    private final String b;

    public un1(String str, HashMap map) {
        y45.j(map, "headers");
        y45.j(str, TtmlNode.TAG_BODY);
        this.a = map;
        this.b = str;
    }

    public final String a() {
        return this.b;
    }

    public final Map<String, String> b() {
        return this.a;
    }
}
