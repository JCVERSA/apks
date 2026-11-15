package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ck1 {
    private final bk1 a;

    public ck1(q82 q82Var) {
        this(q82Var, new bk1(q82Var));
    }

    public final ArrayList a(JSONArray jSONArray) throws JSONException, t61 {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(this.a.a(jSONObjectOptJSONObject));
                }
            }
        }
        return arrayList;
    }

    public ck1(q82 q82Var, bk1 bk1Var) {
        y45.j(q82Var, "urlJsonParser");
        y45.j(bk1Var, "preferredPackageParser");
        this.a = bk1Var;
    }
}
