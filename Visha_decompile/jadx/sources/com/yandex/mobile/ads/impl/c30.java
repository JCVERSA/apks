package com.yandex.mobile.ads.impl;

import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;
import org.json.JSONException;
import org.json.JSONObject;

final class c30 extends Lambda implements s74 {
    final d30 b;
    final List<s20> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c30(d30 d30Var, ArrayList arrayList) {
        super(2);
        this.b = d30Var;
        this.c = arrayList;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        Object obj3;
        JSONObject jSONObject = (JSONObject) obj;
        t20 t20Var = (t20) obj2;
        y45.j(jSONObject, "node");
        y45.j(t20Var, "type");
        this.b.getClass();
        String str = null;
        if (jSONObject.has("view_name")) {
            y45.j(jSONObject, "<this>");
            y45.j("view_name", "key");
            try {
                obj3 = jSONObject.get("view_name");
            } catch (JSONException unused) {
                obj3 = null;
            }
            if (obj3 instanceof String) {
                str = (String) obj3;
            }
        }
        if (str != null) {
            this.c.add(new s20(t20Var, str));
        }
        return zfb.a;
    }
}
