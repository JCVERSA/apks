package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import org.json.JSONObject;

public final class v51 {
    private final Context a;
    private final eq1 b;
    private final qk.a<o8<y61>> c;
    private final wn1 d;
    private final cf1 e;

    public v51(Context context, eq1 eq1Var, qk.a aVar) {
        this(context, eq1Var, aVar, wn1.b.a(), new cf1());
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0061  */
    public final u51 a(hq1<y61> hq1Var, o3 o3Var, v7 v7Var, String str, String str2) {
        String strOptString;
        JSONObject jSONObjectA;
        y45.j(hq1Var, "requestPolicy");
        y45.j(o3Var, "adConfiguration");
        y45.j(v7Var, "adRequestData");
        y45.j(str, "url");
        y45.j(str2, "query");
        u51 u51Var = new u51(this.a, hq1Var, o3Var, str, str2, this.b, this.c, new o61(hq1Var), new x61());
        String strG = v7Var.g();
        this.e.getClass();
        if (strG == null || (jSONObjectA = vq0.a(strG)) == null) {
            strOptString = null;
        } else {
            y45.j(jSONObjectA, "jsonObject");
            y45.j("response", "name");
            if (jSONObjectA.has("response")) {
                strOptString = jSONObjectA.optString("response");
            } else {
                strOptString = null;
            }
        }
        if (strOptString != null) {
            this.d.a(u51Var, strOptString);
        }
        return u51Var;
    }

    public v51(Context context, eq1 eq1Var, qk.a<o8<y61>> aVar, wn1 wn1Var, cf1 cf1Var) {
        y45.j(context, "context");
        y45.j(eq1Var, "requestListener");
        y45.j(aVar, "responseListener");
        y45.j(wn1Var, "responseStorage");
        y45.j(cf1Var, "openBiddingReadyResponseProvider");
        this.a = context;
        this.b = eq1Var;
        this.c = aVar;
        this.d = wn1Var;
        this.e = cf1Var;
    }
}
