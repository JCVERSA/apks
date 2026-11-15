package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class n20 implements gk {
    private final String a;
    private final b30 b;
    private final List<String> c;

    public n20(String str, b30 b30Var, ArrayList arrayList) {
        y45.j(str, "actionType");
        y45.j(b30Var, "design");
        y45.j(arrayList, "trackingUrls");
        this.a = str;
        this.b = b30Var;
        this.c = arrayList;
    }

    @Override
    public final String a() {
        return this.a;
    }

    @Override
    public final List<String> b() {
        return this.c;
    }

    public final b30 c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n20)) {
            return false;
        }
        n20 n20Var = (n20) obj;
        return y45.e(this.a, n20Var.a) && y45.e(this.b, n20Var.b) && y45.e(this.c, n20Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DivKitAdtuneAction(actionType=" + this.a + ", design=" + this.b + ", trackingUrls=" + this.c + ")";
    }
}
