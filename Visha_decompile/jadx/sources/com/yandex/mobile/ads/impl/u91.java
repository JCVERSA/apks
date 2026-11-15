package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class u91 {
    private final x71 a;
    private fh b;

    public u91(x71 x71Var, fh fhVar) {
        y45.j(x71Var, "reportManager");
        y45.j(fhVar, "assetsRenderedReportParameterProvider");
        this.a = x71Var;
        this.b = fhVar;
    }

    public final Map<String, Object> a() {
        return kotlin.collections.a.s(this.a.a().b(), ky5.h(abb.a("assets", ky5.h(abb.a("rendered", this.b.a())))));
    }
}
