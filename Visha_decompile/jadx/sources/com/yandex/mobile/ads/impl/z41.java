package com.yandex.mobile.ads.impl;

import defpackage.ky5;
import defpackage.y45;
import java.util.Map;

public final class z41 {
    private final String a;
    private final String b;
    private final x71 c;

    public z41(String str, String str2, x71 x71Var) {
        y45.j(str, "assetName");
        y45.j(str2, "clickActionType");
        this.a = str;
        this.b = str2;
        this.c = x71Var;
    }

    public final Map<String, Object> a() {
        Map mapE = ky5.e();
        mapE.put("asset_name", this.a);
        mapE.put("action_type", this.b);
        x71 x71Var = this.c;
        if (x71Var != null) {
            mapE.putAll(x71Var.a().b());
        }
        return ky5.d(mapE);
    }
}
