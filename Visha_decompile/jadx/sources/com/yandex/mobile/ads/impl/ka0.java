package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class ka0 {
    private final String a;

    public ka0(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ka0) && y45.e(this.a, ((ka0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "FeedSessionData(value=" + this.a + ")";
    }
}
