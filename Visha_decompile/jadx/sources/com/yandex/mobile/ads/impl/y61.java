package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;
import java.util.Map;
import org.apache.commons.text.lookup.StringLookupFactory;

public final class y61 {
    private final List<g41> a;
    private final List<ig<?>> b;
    private final List<String> c;
    private final t4 d;
    private final Map<String, Object> e;
    private final List<b30> f;
    private final List<ey1> g;
    private final String h;
    private final yx1 i;
    private final g6 j;

    /* JADX WARN: Multi-variable type inference failed */
    public y61(List<g41> list, List<? extends ig<?>> list2, List<String> list3, t4 t4Var, Map<String, ? extends Object> map, List<b30> list4, List<ey1> list5, String str, yx1 yx1Var, g6 g6Var) {
        y45.j(list, "nativeAds");
        y45.j(list2, "assets");
        y45.j(list3, "renderTrackingUrls");
        y45.j(map, StringLookupFactory.KEY_PROPERTIES);
        y45.j(list4, "divKitDesigns");
        y45.j(list5, "showNotices");
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = t4Var;
        this.e = map;
        this.f = list4;
        this.g = list5;
        this.h = str;
        this.i = yx1Var;
        this.j = g6Var;
    }

    public static y61 a(y61 y61Var, List list) {
        List<ig<?>> list2 = y61Var.b;
        List<String> list3 = y61Var.c;
        t4 t4Var = y61Var.d;
        Map<String, Object> map = y61Var.e;
        List<b30> list4 = y61Var.f;
        List<ey1> list5 = y61Var.g;
        String str = y61Var.h;
        yx1 yx1Var = y61Var.i;
        g6 g6Var = y61Var.j;
        y45.j(list, "nativeAds");
        y45.j(list2, "assets");
        y45.j(list3, "renderTrackingUrls");
        y45.j(map, StringLookupFactory.KEY_PROPERTIES);
        y45.j(list4, "divKitDesigns");
        y45.j(list5, "showNotices");
        return new y61(list, list2, list3, t4Var, map, list4, list5, str, yx1Var, g6Var);
    }

    public final List<ig<?>> b() {
        return this.b;
    }

    public final List<b30> c() {
        return this.f;
    }

    public final t4 d() {
        return this.d;
    }

    public final List<g41> e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y61)) {
            return false;
        }
        y61 y61Var = (y61) obj;
        return y45.e(this.a, y61Var.a) && y45.e(this.b, y61Var.b) && y45.e(this.c, y61Var.c) && y45.e(this.d, y61Var.d) && y45.e(this.e, y61Var.e) && y45.e(this.f, y61Var.f) && y45.e(this.g, y61Var.g) && y45.e(this.h, y61Var.h) && y45.e(this.i, y61Var.i) && y45.e(this.j, y61Var.j);
    }

    public final Map<String, Object> f() {
        return this.e;
    }

    public final List<String> g() {
        return this.c;
    }

    public final yx1 h() {
        return this.i;
    }

    public final int hashCode() {
        int iA = aa.a(this.c, aa.a(this.b, this.a.hashCode() * 31, 31), 31);
        t4 t4Var = this.d;
        int iA2 = aa.a(this.g, aa.a(this.f, (this.e.hashCode() + ((iA + (t4Var == null ? 0 : t4Var.hashCode())) * 31)) * 31, 31), 31);
        String str = this.h;
        int iHashCode = (iA2 + (str == null ? 0 : str.hashCode())) * 31;
        yx1 yx1Var = this.i;
        int iHashCode2 = (iHashCode + (yx1Var == null ? 0 : yx1Var.hashCode())) * 31;
        g6 g6Var = this.j;
        return iHashCode2 + (g6Var != null ? g6Var.hashCode() : 0);
    }

    public final List<ey1> i() {
        return this.g;
    }

    public final String toString() {
        return "NativeAdResponse(nativeAds=" + this.a + ", assets=" + this.b + ", renderTrackingUrls=" + this.c + ", impressionData=" + this.d + ", properties=" + this.e + ", divKitDesigns=" + this.f + ", showNotices=" + this.g + ", version=" + this.h + ", settings=" + this.i + ", adPod=" + this.j + ")";
    }

    public final g6 a() {
        return this.j;
    }
}
