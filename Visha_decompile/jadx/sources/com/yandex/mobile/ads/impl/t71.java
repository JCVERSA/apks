package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class t71 {
    private final o3 a;

    public t71(o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        this.a = o3Var;
    }

    public final Map<String, Object> a() {
        Map<String, Object> mapH;
        List<String> listM = this.a.m();
        if (listM.isEmpty()) {
            listM = null;
        }
        return (listM == null || (mapH = ky5.h(abb.a("image_sizes", defpackage.i81.b1(listM)))) == null) ? kotlin.collections.a.l() : mapH;
    }
}
