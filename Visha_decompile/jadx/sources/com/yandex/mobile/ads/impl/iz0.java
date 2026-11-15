package com.yandex.mobile.ads.impl;

import defpackage.ky5;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class iz0 implements hr1<hz0> {
    private final zc1 a;
    private final uz0 b;

    public iz0() {
        this(new ad1(), new uz0());
    }

    @Override
    public final hz0 a(wq1 wq1Var) {
        y45.j(wq1Var, "networkResponse");
        String strA = this.a.a(wq1Var);
        if (strA == null || strA.length() <= 0) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strA);
            try {
                vq0 vq0Var = vq0.a;
                y45.j(jSONObject, "parent");
                y45.j("passback_parameters", "name");
                JSONObject jSONObject2 = jSONObject.getJSONObject("passback_parameters");
                Map mapE = ky5.e();
                Iterator<String> itKeys = jSONObject2.keys();
                y45.i(itKeys, "keys(...)");
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    y45.g(next);
                    String string = jSONObject2.getString(next);
                    y45.i(string, "getString(...)");
                    mapE.put(next, string);
                }
                Map mapD = ky5.d(mapE);
                if (mapD.isEmpty()) {
                    return null;
                }
                JSONArray jSONArray = jSONObject.getJSONArray("networks");
                ArrayList arrayList = new ArrayList();
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                    uz0 uz0Var = this.b;
                    y45.g(jSONObject3);
                    lz0 lz0VarA = uz0Var.a(jSONObject3);
                    if (lz0VarA != null) {
                        arrayList.add(lz0VarA);
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new hz0(arrayList, mapD);
            } catch (JSONException e) {
                sp0.c(new Object[0]);
                throw new JSONException(e.getMessage());
            }
        } catch (JSONException unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public iz0(zc1 zc1Var, uz0 uz0Var) {
        y45.j(zc1Var, "networkResponseDecoder");
        y45.j(uz0Var, "mediationNetworkParser");
        this.a = zc1Var;
        this.b = uz0Var;
    }
}
