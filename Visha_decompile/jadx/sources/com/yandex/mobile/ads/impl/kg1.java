package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class kg1 {
    private final String a;
    private final hz0 b;

    public kg1(String str, hz0 hz0Var) {
        y45.j(hz0Var, "mediationData");
        this.a = str;
        this.b = hz0Var;
    }

    public final Map<String, String> a() {
        String str = this.a;
        return (str == null || str.length() == 0) ? this.b.d() : kotlin.collections.a.s(this.b.d(), ky5.h(abb.a("adf-resp_time", this.a)));
    }
}
