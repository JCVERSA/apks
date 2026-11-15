package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class nw {
    private final List<mw> a;

    public nw(List<mw> list) {
        y45.j(list, "adapters");
        this.a = list;
    }

    public final List<mw> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nw) && y45.e(this.a, ((nw) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DebugPanelAdUnitMediationData(adapters=" + this.a + ")";
    }
}
