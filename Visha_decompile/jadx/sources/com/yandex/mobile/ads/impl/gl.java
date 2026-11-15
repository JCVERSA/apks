package com.yandex.mobile.ads.impl;

import defpackage.u95;
import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class gl {
    private final uz0 a;
    private final u95 b;

    public gl() {
        uz0 uz0Var = new uz0();
        vq0.a.getClass();
        this(uz0Var, vq0.a());
    }

    public final ba a(JSONObject jSONObject) {
        String strA;
        y45.j(jSONObject, "adUnitIdBiddingSettingsJson");
        try {
            try {
                vq0.a.getClass();
                strA = vq0.a("ad_unit_id", jSONObject);
            } catch (JSONException unused) {
                vq0.a.getClass();
                strA = vq0.a("block_id", jSONObject);
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("networks");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                    uz0 uz0Var = this.a;
                    y45.g(jSONObject2);
                    lz0 lz0VarA = uz0Var.a(jSONObject2);
                    if (lz0VarA != null) {
                        arrayList.add(lz0VarA);
                    }
                }
                if (!arrayList.isEmpty()) {
                    String string = jSONObject.toString();
                    y45.i(string, "toString(...)");
                    return new ba(strA, string, arrayList);
                }
            }
        } catch (JSONException unused2) {
            sp0.b(new Object[0]);
        }
        return null;
    }

    public final fl b(JSONObject jSONObject) {
        JSONObject jSONObject2;
        h01 h01Var;
        String string;
        y45.j(jSONObject, "jsonBiddingSettings");
        try {
            jSONObject2 = jSONObject.getJSONObject("mediation_prefetch_settings");
        } catch (Exception unused) {
            jSONObject2 = null;
        }
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = jSONObject.optJSONArray("block_id_settings");
            }
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObject3 = jSONArrayOptJSONArray.getJSONObject(i);
                    y45.g(jSONObject3);
                    ba baVarA = a(jSONObject3);
                    if (baVarA != null) {
                        arrayList.add(baVarA);
                    }
                }
            }
            if (jSONObject2 == null || (string = jSONObject2.toString()) == null) {
                h01Var = null;
            } else {
                u95 u95Var = this.b;
                u95Var.a();
                h01Var = (h01) u95Var.c(defpackage.qn0.t(h01.Companion.serializer()), string);
            }
            if (arrayList.isEmpty() && h01Var == null) {
                return null;
            }
            return new fl(arrayList, h01Var);
        } catch (JSONException unused2) {
            sp0.b(new Object[0]);
            return null;
        }
    }

    public gl(uz0 uz0Var, u95 u95Var) {
        y45.j(uz0Var, "mediationNetworkParser");
        y45.j(u95Var, "jsonParser");
        this.a = uz0Var;
        this.b = u95Var;
    }
}
