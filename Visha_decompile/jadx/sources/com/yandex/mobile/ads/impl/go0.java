package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public final class go0 {
    private final String a;
    private final xn0 b;
    private final List<xn0> c;
    private final zc2 d;
    private final od2 e;
    private final cm0 f;
    private final JSONObject g;
    private final long h;
    private final List<u70> i;

    public go0(String str, xn0 xn0Var, ArrayList arrayList, zc2 zc2Var, od2 od2Var, cm0 cm0Var, JSONObject jSONObject, long j, List list) {
        y45.j(str, "videoAdId");
        y45.j(xn0Var, "recommendedMediaFile");
        y45.j(arrayList, "mediaFiles");
        y45.j(zc2Var, "adPodInfo");
        y45.j(cm0Var, "adInfo");
        y45.j(list, "extensions");
        this.a = str;
        this.b = xn0Var;
        this.c = arrayList;
        this.d = zc2Var;
        this.e = od2Var;
        this.f = cm0Var;
        this.g = jSONObject;
        this.h = j;
        this.i = list;
    }

    public final cm0 a() {
        return this.f;
    }

    public final zc2 b() {
        return this.d;
    }

    public final long c() {
        return this.h;
    }

    public final List<u70> d() {
        return this.i;
    }

    public final JSONObject e() {
        return this.g;
    }

    public final List<xn0> f() {
        return this.c;
    }

    public final xn0 g() {
        return this.b;
    }

    public final od2 h() {
        return this.e;
    }

    public final String toString() {
        return this.a;
    }
}
