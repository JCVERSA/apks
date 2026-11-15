package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class tw {
    private final List<rw> a;

    public tw(ArrayList arrayList) {
        y45.j(arrayList, "adapters");
        this.a = arrayList;
    }

    public final List<rw> a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof tw) && y45.e(this.a, ((tw) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DebugPanelAdaptersData(adapters=" + this.a + ")";
    }
}
