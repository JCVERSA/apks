package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class w02 implements x {
    private final String a;
    private final List<z02> b;

    public w02(String str, ArrayList arrayList) {
        y45.j(str, "actionType");
        y45.j(arrayList, "items");
        this.a = str;
        this.b = arrayList;
    }

    @Override
    public final String a() {
        return this.a;
    }

    public final List<z02> c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w02)) {
            return false;
        }
        w02 w02Var = (w02) obj;
        return y45.e(this.a, w02Var.a) && y45.e(this.b, w02Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "SocialAction(actionType=" + this.a + ", items=" + this.b + ")";
    }
}
