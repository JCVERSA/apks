package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class ox {
    private final List<u11> a;
    private final List<m11> b;

    public ox(List<u11> list, List<m11> list2) {
        y45.j(list, "sdkLogs");
        y45.j(list2, "networkLogs");
        this.a = list;
        this.b = list2;
    }

    public final List<m11> a() {
        return this.b;
    }

    public final List<u11> b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ox)) {
            return false;
        }
        ox oxVar = (ox) obj;
        return y45.e(this.a, oxVar.a) && y45.e(this.b, oxVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DebugPanelLogsData(sdkLogs=" + this.a + ", networkLogs=" + this.b + ")";
    }
}
