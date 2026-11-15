package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class dk0 {
    private final pj0 a;

    public dk0() {
        this(new pj0());
    }

    public final ArrayList a(JSONArray jSONArray) throws JSONException {
        y45.j(jSONArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            pj0 pj0Var = this.a;
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            y45.i(jSONObject, "getJSONObject(...)");
            arrayList.add(pj0Var.b(jSONObject));
        }
        return arrayList;
    }

    public dk0(pj0 pj0Var) {
        y45.j(pj0Var, "imageParser");
        this.a = pj0Var;
    }
}
