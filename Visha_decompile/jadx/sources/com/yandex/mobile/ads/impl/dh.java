package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class dh {
    private final tg a;

    /* JADX WARN: Illegal instructions before constructor call */
    public dh(Context context, sp1 sp1Var, wr0 wr0Var, int i) {
        wr0Var = (i & 4) != 0 ? new wr0(sp1Var) : wr0Var;
        this(context, sp1Var, wr0Var, new tg(context, sp1Var, wr0Var));
    }

    public final ArrayList a(JSONObject jSONObject, xj xjVar) throws JSONException, t61 {
        y45.j(jSONObject, "jsonNative");
        y45.j(xjVar, "base64EncodingParameters");
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("assets");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            boolean z = jSONObject2.getBoolean("required");
            try {
                tg tgVar = this.a;
                y45.g(jSONObject2);
                arrayList.add(tgVar.a(jSONObject2, xjVar));
            } catch (Throwable th) {
                if (z) {
                    throw th;
                }
            }
        }
        return arrayList;
    }

    public dh(Context context, sp1 sp1Var, wr0 wr0Var, tg tgVar) {
        y45.j(context, "context");
        y45.j(sp1Var, "reporter");
        y45.j(wr0Var, "linkJsonParser");
        y45.j(tgVar, "assetJsonParser");
        this.a = tgVar;
    }
}
