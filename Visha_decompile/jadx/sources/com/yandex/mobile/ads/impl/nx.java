package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class nx {
    private final xw a;
    private final yx b;
    private final List<qz0> c;
    private final ax d;
    private final hx e;
    private final ox f;

    public nx(xw xwVar, yx yxVar, ArrayList arrayList, ax axVar, hx hxVar, ox oxVar) {
        y45.j(xwVar, "appData");
        y45.j(yxVar, "sdkData");
        y45.j(arrayList, "mediationNetworksData");
        y45.j(axVar, "consentsData");
        y45.j(hxVar, "debugErrorIndicatorData");
        this.a = xwVar;
        this.b = yxVar;
        this.c = arrayList;
        this.d = axVar;
        this.e = hxVar;
        this.f = oxVar;
    }

    public final xw a() {
        return this.a;
    }

    public final ax b() {
        return this.d;
    }

    public final hx c() {
        return this.e;
    }

    public final ox d() {
        return this.f;
    }

    public final List<qz0> e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nx)) {
            return false;
        }
        nx nxVar = (nx) obj;
        return y45.e(this.a, nxVar.a) && y45.e(this.b, nxVar.b) && y45.e(this.c, nxVar.c) && y45.e(this.d, nxVar.d) && y45.e(this.e, nxVar.e) && y45.e(this.f, nxVar.f);
    }

    public final yx f() {
        return this.b;
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + ((this.d.hashCode() + aa.a(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31)) * 31)) * 31;
        ox oxVar = this.f;
        return iHashCode + (oxVar == null ? 0 : oxVar.hashCode());
    }

    public final String toString() {
        return "DebugPanelLocalData(appData=" + this.a + ", sdkData=" + this.b + ", mediationNetworksData=" + this.c + ", consentsData=" + this.d + ", debugErrorIndicatorData=" + this.e + ", logsData=" + this.f + ")";
    }
}
