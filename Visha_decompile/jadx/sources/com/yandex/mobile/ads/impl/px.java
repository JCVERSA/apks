package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class px {
    private final String a;
    private final String b;

    public px(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof px)) {
            return false;
        }
        px pxVar = (px) obj;
        return y45.e(this.a, pxVar.a) && y45.e(this.b, pxVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelMediationAdapterParameterData(name=" + this.a + ", value=" + this.b + ")";
    }
}
