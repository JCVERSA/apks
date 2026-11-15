package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import org.json.JSONObject;

public abstract class pg0 extends ck<String> {
    private final cf1 w;
    private final wn1 x;

    public pg0(Context context, o3 o3Var, g5 g5Var) {
        this(context, o3Var, g5Var, su.a(), new cf1(), wn1.b.a());
    }

    @Override
    public final ak<String> a(String str, String str2) {
        JSONObject jSONObjectA;
        y45.j(str, "url");
        y45.j(str2, "query");
        Context contextL = l();
        o3 o3VarF = f();
        sx1.a.getClass();
        u3 u3Var = new u3(contextL, o3VarF, str, str2, this, this, sx1.a.a(contextL), new qg0(), new d8());
        v7 v7VarA = f().a();
        String strOptString = null;
        String strG = v7VarA != null ? v7VarA.g() : null;
        this.w.getClass();
        if (strG != null && (jSONObjectA = vq0.a(strG)) != null) {
            y45.j(jSONObjectA, "jsonObject");
            y45.j("response", "name");
            if (jSONObjectA.has("response")) {
                strOptString = jSONObjectA.optString("response");
            }
        }
        if (strOptString != null) {
            this.x.a(u3Var, strOptString);
        }
        return u3Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pg0(Context context, o3 o3Var, g5 g5Var, defpackage.nk1 nk1Var, cf1 cf1Var, wn1 wn1Var) {
        super(context, g5Var, o3Var, nk1Var);
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(nk1Var, "coroutineScope");
        y45.j(cf1Var, "openBiddingReadyResponseProvider");
        y45.j(wn1Var, "responseStorage");
        this.w = cf1Var;
        this.x = wn1Var;
    }
}
