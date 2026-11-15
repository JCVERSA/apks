package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class g41 {
    private final gr1 a;
    private List<? extends ig<?>> b;
    private final String c;
    private final String d;
    private final vr0 e;
    private final t4 f;
    private final ib0 g;
    private final ib0 h;
    private final List<String> i;
    private final List<ey1> j;

    public g41(gr1 gr1Var, List<? extends ig<?>> list, String str, String str2, vr0 vr0Var, t4 t4Var, ib0 ib0Var, ib0 ib0Var2, List<String> list2, List<ey1> list3) {
        y45.j(gr1Var, "responseNativeType");
        y45.j(list, "assets");
        y45.j(list2, "renderTrackingUrls");
        y45.j(list3, "showNotices");
        this.a = gr1Var;
        this.b = list;
        this.c = str;
        this.d = str2;
        this.e = vr0Var;
        this.f = t4Var;
        this.g = ib0Var;
        this.h = ib0Var2;
        this.i = list2;
        this.j = list3;
    }

    public static g41 a(g41 g41Var, List list) {
        gr1 gr1Var = g41Var.a;
        String str = g41Var.c;
        String str2 = g41Var.d;
        vr0 vr0Var = g41Var.e;
        t4 t4Var = g41Var.f;
        ib0 ib0Var = g41Var.g;
        ib0 ib0Var2 = g41Var.h;
        List<String> list2 = g41Var.i;
        List<ey1> list3 = g41Var.j;
        y45.j(gr1Var, "responseNativeType");
        y45.j(list, "assets");
        y45.j(list2, "renderTrackingUrls");
        y45.j(list3, "showNotices");
        return new g41(gr1Var, list, str, str2, vr0Var, t4Var, ib0Var, ib0Var2, list2, list3);
    }

    public final List<ig<?>> b() {
        return this.b;
    }

    public final t4 c() {
        return this.f;
    }

    public final String d() {
        return this.d;
    }

    public final vr0 e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g41)) {
            return false;
        }
        g41 g41Var = (g41) obj;
        return this.a == g41Var.a && y45.e(this.b, g41Var.b) && y45.e(this.c, g41Var.c) && y45.e(this.d, g41Var.d) && y45.e(this.e, g41Var.e) && y45.e(this.f, g41Var.f) && y45.e(this.g, g41Var.g) && y45.e(this.h, g41Var.h) && y45.e(this.i, g41Var.i) && y45.e(this.j, g41Var.j);
    }

    public final List<String> f() {
        return this.i;
    }

    public final gr1 g() {
        return this.a;
    }

    public final List<ey1> h() {
        return this.j;
    }

    public final int hashCode() {
        int iA = aa.a(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        int iHashCode = (iA + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        vr0 vr0Var = this.e;
        int iHashCode3 = (iHashCode2 + (vr0Var == null ? 0 : vr0Var.hashCode())) * 31;
        t4 t4Var = this.f;
        int iHashCode4 = (iHashCode3 + (t4Var == null ? 0 : t4Var.hashCode())) * 31;
        ib0 ib0Var = this.g;
        int iHashCode5 = (iHashCode4 + (ib0Var == null ? 0 : ib0Var.hashCode())) * 31;
        ib0 ib0Var2 = this.h;
        return this.j.hashCode() + aa.a(this.i, (iHashCode5 + (ib0Var2 != null ? ib0Var2.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "Native(responseNativeType=" + this.a + ", assets=" + this.b + ", adId=" + this.c + ", info=" + this.d + ", link=" + this.e + ", impressionData=" + this.f + ", hideConditions=" + this.g + ", showConditions=" + this.h + ", renderTrackingUrls=" + this.i + ", showNotices=" + this.j + ")";
    }

    public final String a() {
        return this.c;
    }

    public final void a(ArrayList arrayList) {
        y45.j(arrayList, "<set-?>");
        this.b = arrayList;
    }
}
