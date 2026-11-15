package io.appmetrica.analytics.impl;

import java.util.HashMap;
import java.util.Map;

public final class P7 {
    public final Map a;
    public final String b;
    public final String c;

    public P7(String str, HashMap map, String str2) {
        this.b = str;
        this.a = map;
        this.c = str2;
    }

    public final String toString() {
        return "DeferredDeeplinkState{mParameters=" + this.a + ", mDeeplink='" + this.b + "', mUnparsedReferrer='" + this.c + "'}";
    }
}
