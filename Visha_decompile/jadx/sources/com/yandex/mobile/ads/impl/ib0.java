package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class ib0 {
    private final List<pl0> a;

    public ib0(ArrayList arrayList) {
        y45.j(arrayList, "installedPackages");
        this.a = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ib0) && y45.e(this.a, ((ib0) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "FilteringRule(installedPackages=" + this.a + ")";
    }
}
