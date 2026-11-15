package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class j30 {
    private final o8<?> a;
    private final sp1 b;
    private final uq0 c;

    public j30(o3 o3Var, o8 o8Var) {
        this(o3Var, o8Var, o3Var.q().c(), new uq0());
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    public final void a(Uri uri, JSONObject jSONObject) {
        Map map;
        y45.j(uri, "uri");
        String queryParameter = uri.getQueryParameter("eventName");
        if (queryParameter != null) {
            if (queryParameter.length() == 0) {
                queryParameter = null;
            }
            if (queryParameter != null) {
                if (jSONObject != null) {
                    this.c.getClass();
                    map = kotlin.collections.a.C(uq0.a(jSONObject));
                    if (map == null) {
                        map = new HashMap();
                    }
                } else {
                    map = new HashMap();
                }
                this.b.a(new op1(queryParameter, (Map<String, Object>) map, this.a.a()));
            }
        }
    }

    public j30(o3 o3Var, o8<?> o8Var, sp1 sp1Var, uq0 uq0Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(sp1Var, "reporter");
        y45.j(uq0Var, "jsonConvertor");
        this.a = o8Var;
        this.b = sp1Var;
        this.c = uq0Var;
    }
}
