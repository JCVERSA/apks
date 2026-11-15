package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class pw {
    private final List<jw> a;

    public pw(ArrayList arrayList) {
        y45.j(arrayList, "adUnits");
        this.a = arrayList;
    }

    public final List<jw> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof pw) && y45.e(this.a, ((pw) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DebugPanelAdUnitsData(adUnits=" + this.a + ")";
    }
}
