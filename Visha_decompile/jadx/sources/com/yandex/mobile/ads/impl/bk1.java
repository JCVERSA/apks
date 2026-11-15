package com.yandex.mobile.ads.impl;

import defpackage.g1a;
import defpackage.y45;
import java.util.LinkedHashMap;
import kotlin.Result;
import org.json.JSONException;
import org.json.JSONObject;

public final class bk1 {
    private final q82 a;
    private final h80 b;

    public bk1(q82 q82Var) {
        this(q82Var, new h80());
    }

    public final zj1 a(JSONObject jSONObject) throws JSONException, t61 {
        Object objM279constructorimpl;
        y45.j(jSONObject, "jsonObject");
        String strA = j91.a(jSONObject, "jsonAsset", "package", "jsonAttribute", "package");
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        this.a.getClass();
        String strA2 = q82.a("url", jSONObject);
        LinkedHashMap linkedHashMapA = this.b.a(jSONObject.optJSONObject("extras"));
        y45.j(jSONObject, "<this>");
        y45.j("flags", "name");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Integer.valueOf(jSONObject.getInt("flags")));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Object obj = null;
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        Integer num = (Integer) objM279constructorimpl;
        String strA3 = wq0.a("launchMode", jSONObject);
        xy.b.getClass();
        for (Object obj2 : xy.a()) {
            if (g1a.E(((xy) obj2).name(), strA3, true)) {
                obj = obj2;
                break;
            }
        }
        xy xyVar = (xy) obj;
        return new zj1(strA, strA2, linkedHashMapA, num, xyVar == null ? xy.c : xyVar);
    }

    public bk1(q82 q82Var, h80 h80Var) {
        y45.j(q82Var, "urlJsonParser");
        y45.j(h80Var, "extrasParser");
        this.a = q82Var;
        this.b = h80Var;
    }
}
