package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.abb;
import defpackage.y45;
import java.util.Map;
import kotlin.Pair;
import org.json.JSONException;
import org.json.JSONObject;

public final class c0 {
    private final sp1 a;
    private final q82 b;
    private final a72 c;
    private final f10 d;
    private final g30 e;
    private Map<String, ? extends b0<?>> f;

    public c0(sp1 sp1Var) {
        this(sp1Var, new q82(), new a72(), new f10(), new g30(sp1Var));
    }

    public final b0<?> a(JSONObject jSONObject, xj xjVar) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        y45.j(xjVar, "base64EncodingParameters");
        String strA = j91.a(jSONObject, "jsonAsset", "type", "jsonAttribute", "type");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        Map<String, ? extends b0<?>> mapP = this.f;
        if (mapP == null) {
            Pair pairA = abb.a("adtune", new lb(this.b, this.c));
            Pair pairA2 = abb.a("divkit_adtune", new p20(this.d, this.e, this.c, xjVar.a()));
            Pair pairA3 = abb.a(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, new np());
            q82 q82Var = this.b;
            Pair pairA4 = abb.a("deeplink", new wy(q82Var, new ck1(q82Var)));
            Pair pairA5 = abb.a("feedback", new qa0(this.b));
            sp1 sp1Var = this.a;
            mapP = kotlin.collections.a.p(pairA, pairA2, pairA3, pairA4, pairA5, abb.a("social_action", new d12(sp1Var, xjVar, new a12(new wr0(sp1Var)))));
            this.f = mapP;
        }
        return mapP.get(strA);
    }

    public c0(sp1 sp1Var, q82 q82Var, a72 a72Var, f10 f10Var, g30 g30Var) {
        y45.j(sp1Var, "reporter");
        y45.j(q82Var, "urlJsonParser");
        y45.j(a72Var, "trackingUrlsParser");
        y45.j(f10Var, "designJsonParser");
        y45.j(g30Var, "divKitDesignParser");
        this.a = sp1Var;
        this.b = q82Var;
        this.c = a72Var;
        this.d = f10Var;
        this.e = g30Var;
    }
}
