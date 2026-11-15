package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class fx0 implements ug<ex0> {
    private final ow0 a;
    private final ye2 b;
    private final pj0 c;
    private final dk0 d;

    public fx0(Context context, sp1 sp1Var, xj xjVar, ow0 ow0Var, ye2 ye2Var, pj0 pj0Var, dk0 dk0Var) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(xjVar, "base64EncodingParameters");
        y45.j(ow0Var, "mediaParser");
        y45.j(ye2Var, "videoParser");
        y45.j(pj0Var, "imageParser");
        y45.j(dk0Var, "imageValuesParser");
        this.a = ow0Var;
        this.b = ye2Var;
        this.c = pj0Var;
        this.d = dk0Var;
    }

    @Override
    public final ex0 a(JSONObject jSONObject) throws JSONException, t61 {
        Object objA;
        Object objB;
        Object objA2;
        y45.j(jSONObject, "jsonAsset");
        if (!jSONObject.has(ES6Iterator.VALUE_PROPERTY) || jSONObject.isNull(ES6Iterator.VALUE_PROPERTY)) {
            sp0.b(new Object[0]);
            throw new t61("Native Ad json has not required attributes");
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject(ES6Iterator.VALUE_PROPERTY);
        y45.g(jSONObject2);
        ow0 ow0Var = this.a;
        if (!jSONObject2.has("media") || jSONObject2.isNull("media")) {
            objA = null;
        } else {
            JSONObject jSONObject3 = jSONObject2.getJSONObject("media");
            y45.g(jSONObject3);
            objA = ow0Var.a(jSONObject3);
        }
        wu0 wu0Var = (wu0) objA;
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("images");
        List listA = jSONArrayOptJSONArray != null ? this.d.a(jSONArrayOptJSONArray) : null;
        pj0 pj0Var = this.c;
        if (!jSONObject2.has("image") || jSONObject2.isNull("image")) {
            objB = null;
        } else {
            JSONObject jSONObject4 = jSONObject2.getJSONObject("image");
            y45.g(jSONObject4);
            objB = pj0Var.b(jSONObject4);
        }
        xj0 xj0Var = (xj0) objB;
        if ((listA == null || listA.isEmpty()) && xj0Var != null) {
            listA = defpackage.y71.q(xj0Var);
        }
        ye2 ye2Var = this.b;
        if (!jSONObject2.has("video") || jSONObject2.isNull("video")) {
            objA2 = null;
        } else {
            JSONObject jSONObject5 = jSONObject2.getJSONObject("video");
            y45.g(jSONObject5);
            objA2 = ye2Var.a(jSONObject5);
        }
        lb2 lb2Var = (lb2) objA2;
        if (wu0Var != null || ((listA != null && !listA.isEmpty()) || lb2Var != null)) {
            return new ex0(wu0Var, lb2Var, listA != null ? defpackage.i81.e1(listA) : null);
        }
        sp0.b(new Object[0]);
        throw new t61("Native Ad json has not required attributes");
    }
}
