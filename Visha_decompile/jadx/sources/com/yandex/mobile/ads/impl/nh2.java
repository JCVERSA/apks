package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Map;

public final class nh2 {
    private final mh2 a;
    private final nr0 b;
    private final tu0 c;
    private final Map<String, String> d;

    public nh2(mh2 mh2Var, nr0 nr0Var, tu0 tu0Var, Map<String, String> map) {
        y45.j(mh2Var, "view");
        y45.j(nr0Var, "layoutParams");
        y45.j(tu0Var, "measured");
        y45.j(map, "additionalInfo");
        this.a = mh2Var;
        this.b = nr0Var;
        this.c = tu0Var;
        this.d = map;
    }

    public final Map<String, String> a() {
        return this.d;
    }

    public final nr0 b() {
        return this.b;
    }

    public final tu0 c() {
        return this.c;
    }

    public final mh2 d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nh2)) {
            return false;
        }
        nh2 nh2Var = (nh2) obj;
        return y45.e(this.a, nh2Var.a) && y45.e(this.b, nh2Var.b) && y45.e(this.c, nh2Var.c) && y45.e(this.d, nh2Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ViewSizeInfo(view=" + this.a + ", layoutParams=" + this.b + ", measured=" + this.c + ", additionalInfo=" + this.d + ")";
    }
}
