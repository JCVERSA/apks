package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdRequestConfiguration;
import defpackage.y45;
import java.util.Collections;
import java.util.Map;

public final class km2 implements oi2 {
    private final InstreamAdRequestConfiguration a;

    public km2(InstreamAdRequestConfiguration instreamAdRequestConfiguration) {
        y45.j(instreamAdRequestConfiguration, "adRequestConfiguration");
        this.a = instreamAdRequestConfiguration;
    }

    @Override
    public final String a() {
        return this.a.getPageId();
    }

    @Override
    public final String b() {
        return this.a.getCategoryId();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof km2) && y45.e(this.a, ((km2) obj).a);
    }

    @Override
    public final Map<String, String> getParameters() {
        Map<String, String> parameters = this.a.getParameters();
        if (parameters != null) {
            return parameters;
        }
        Map<String, String> mapEmptyMap = Collections.emptyMap();
        y45.i(mapEmptyMap, "emptyMap(...)");
        return mapEmptyMap;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexInstreamAdRequestConfigurationAdapter(adRequestConfiguration=" + this.a + ")";
    }
}
