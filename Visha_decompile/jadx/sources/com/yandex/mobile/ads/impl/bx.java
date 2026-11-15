package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class bx {
    private final xw a;
    private final yx b;
    private final gw c;
    private final tw d;
    private final ax e;
    private final hx f;
    private final List<hw> g;
    private final List<vw> h;

    public bx(xw xwVar, yx yxVar, gw gwVar, tw twVar, ax axVar, hx hxVar, List<hw> list, List<vw> list2) {
        y45.j(xwVar, "appData");
        y45.j(yxVar, "sdkData");
        y45.j(gwVar, "networkSettingsData");
        y45.j(twVar, "adaptersData");
        y45.j(axVar, "consentsData");
        y45.j(hxVar, "debugErrorIndicatorData");
        y45.j(list, "adUnits");
        y45.j(list2, "alerts");
        this.a = xwVar;
        this.b = yxVar;
        this.c = gwVar;
        this.d = twVar;
        this.e = axVar;
        this.f = hxVar;
        this.g = list;
        this.h = list2;
    }

    public final List<hw> a() {
        return this.g;
    }

    public final tw b() {
        return this.d;
    }

    public final List<vw> c() {
        return this.h;
    }

    public final xw d() {
        return this.a;
    }

    public final ax e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bx)) {
            return false;
        }
        bx bxVar = (bx) obj;
        return y45.e(this.a, bxVar.a) && y45.e(this.b, bxVar.b) && y45.e(this.c, bxVar.c) && y45.e(this.d, bxVar.d) && y45.e(this.e, bxVar.e) && y45.e(this.f, bxVar.f) && y45.e(this.g, bxVar.g) && y45.e(this.h, bxVar.h);
    }

    public final hx f() {
        return this.f;
    }

    public final gw g() {
        return this.c;
    }

    public final yx h() {
        return this.b;
    }

    public final int hashCode() {
        return this.h.hashCode() + aa.a(this.g, (this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31);
    }

    public final String toString() {
        return "DebugPanelData(appData=" + this.a + ", sdkData=" + this.b + ", networkSettingsData=" + this.c + ", adaptersData=" + this.d + ", consentsData=" + this.e + ", debugErrorIndicatorData=" + this.f + ", adUnits=" + this.g + ", alerts=" + this.h + ")";
    }
}
