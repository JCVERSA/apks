package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class ix {
    private final List<vw> a;
    private final xw b;
    private final zx c;
    private final gw d;
    private final tw e;
    private final ax f;
    private final hx g;

    public ix(List<vw> list, xw xwVar, zx zxVar, gw gwVar, tw twVar, ax axVar, hx hxVar) {
        y45.j(list, "alertsData");
        y45.j(xwVar, "appData");
        y45.j(zxVar, "sdkIntegrationData");
        y45.j(gwVar, "adNetworkSettingsData");
        y45.j(twVar, "adaptersData");
        y45.j(axVar, "consentsData");
        y45.j(hxVar, "debugErrorIndicatorData");
        this.a = list;
        this.b = xwVar;
        this.c = zxVar;
        this.d = gwVar;
        this.e = twVar;
        this.f = axVar;
        this.g = hxVar;
    }

    public final gw a() {
        return this.d;
    }

    public final tw b() {
        return this.e;
    }

    public final xw c() {
        return this.b;
    }

    public final ax d() {
        return this.f;
    }

    public final hx e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ix)) {
            return false;
        }
        ix ixVar = (ix) obj;
        return y45.e(this.a, ixVar.a) && y45.e(this.b, ixVar.b) && y45.e(this.c, ixVar.c) && y45.e(this.d, ixVar.d) && y45.e(this.e, ixVar.e) && y45.e(this.f, ixVar.f) && y45.e(this.g, ixVar.g);
    }

    public final zx f() {
        return this.c;
    }

    public final int hashCode() {
        return this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "DebugPanelFeedData(alertsData=" + this.a + ", appData=" + this.b + ", sdkIntegrationData=" + this.c + ", adNetworkSettingsData=" + this.d + ", adaptersData=" + this.e + ", consentsData=" + this.f + ", debugErrorIndicatorData=" + this.g + ")";
    }
}
