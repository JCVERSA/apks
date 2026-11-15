package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class rl0 {
    private final ql0 a;

    public rl0() {
        this(new ql0());
    }

    public final ArrayList a(JSONObject jSONObject) throws JSONException, t61 {
        y45.j(jSONObject, "jsonObject");
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("installedPackages");
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                ql0 ql0Var = this.a;
                y45.g(jSONObject2);
                ql0Var.getClass();
                y45.j(jSONObject2, "jsonInstalledPackage");
                if (!l91.a(jSONObject2, "name")) {
                    throw new t61("Native Ad json has not required attributes");
                }
                String strA = j91.a(jSONObject2, "jsonAsset", "name", "jsonAttribute", "name");
                if (strA == null || strA.length() == 0 || y45.e(strA, "null")) {
                    throw new t61("Native Ad json has not required attributes");
                }
                y45.g(strA);
                int i2 = oa.b;
                y45.j(jSONObject2, "jsonObject");
                y45.j("minVersion", "jsonAttribute");
                int iOptInt = jSONObject2.optInt("minVersion", 0);
                if (iOptInt < 0) {
                    iOptInt = 0;
                }
                y45.j(jSONObject2, "jsonObject");
                y45.j("maxVersion", "jsonAttribute");
                int i3 = Integer.MAX_VALUE;
                int iOptInt2 = jSONObject2.optInt("maxVersion", Integer.MAX_VALUE);
                if (iOptInt2 >= 0) {
                    i3 = iOptInt2;
                }
                arrayList.add(new pl0(iOptInt, i3, strA));
            }
        }
        return arrayList;
    }

    public rl0(ql0 ql0Var) {
        y45.j(ql0Var, "installedPackageJsonParser");
        this.a = ql0Var;
    }
}
