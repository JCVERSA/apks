package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class e60 {
    private final f60 a;
    private final String b;

    public e60(f60 f60Var, String str) {
        y45.j(f60Var, "type");
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        this.a = f60Var;
        this.b = str;
    }

    public final f60 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e60)) {
            return false;
        }
        e60 e60Var = (e60) obj;
        return this.a == e60Var.a && y45.e(this.b, e60Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ExclusionRule(type=" + this.a + ", value=" + this.b + ")";
    }
}
