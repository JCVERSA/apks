package com.yandex.mobile.ads.impl;

import defpackage.xe9;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class wr0 {
    private final c0 a;

    public wr0(sp1 sp1Var) {
        this(sp1Var, new c0(sp1Var));
    }

    private static String a(String str, JSONObject jSONObject) throws JSONException, t61 {
        if (!jSONObject.has(str)) {
            return null;
        }
        String strA = j91.a(jSONObject, "jsonAsset", str, "jsonAttribute", str);
        if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
            throw new t61("Native Ad json has not required attributes");
        }
        y45.g(strA);
        return strA;
    }

    public wr0(sp1 sp1Var, c0 c0Var) {
        y45.j(sp1Var, "reporter");
        y45.j(c0Var, "actionParserProvider");
        this.a = c0Var;
    }

    public final vr0 a(JSONObject jSONObject, xj xjVar) throws JSONException, t61 {
        ArrayList arrayList;
        Object objM279constructorimpl;
        y45.j(jSONObject, "jsonLink");
        y45.j(xjVar, "base64EncodingParameters");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("actions");
        List listA = null;
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList2 = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                c0 c0Var = this.a;
                y45.g(jSONObject2);
                b0<?> b0VarA = c0Var.a(jSONObject2, xjVar);
                if (b0VarA != null) {
                    arrayList2.add(b0VarA.a(jSONObject2));
                }
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        String strA = a("falseClickUrl", jSONObject);
        m80 m80Var = strA != null ? new m80(strA, jSONObject.optLong("falseClickInterval", 0L)) : null;
        Set setB = xe9.b();
        String strA2 = a("trackingUrl", jSONObject);
        if (strA2 != null) {
            setB.add(strA2);
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("trackingUrls");
        if (jSONArrayOptJSONArray2 != null) {
            List listC = defpackage.x71.c();
            int length2 = jSONArrayOptJSONArray2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(jSONArrayOptJSONArray2.getString(i2));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
                }
                if (Result.m286isSuccessimpl(objM279constructorimpl)) {
                    String str = (String) objM279constructorimpl;
                    y45.g(str);
                    listC.add(str);
                }
            }
            listA = defpackage.x71.a(listC);
        }
        if (listA != null) {
            setB.addAll(listA);
        }
        return new vr0(arrayList, m80Var, defpackage.i81.b1(xe9.a(setB)), a("url", jSONObject), jSONObject.optLong("clickableDelay", 0L));
    }
}
