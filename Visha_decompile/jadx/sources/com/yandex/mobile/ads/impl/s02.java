package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.q15;
import defpackage.u15;
import defpackage.wn8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class s02 {
    private final q02 a = new q02();
    private final vi b = new vi();

    public final r02 a(JSONObject jSONObject) throws JSONException {
        j02 j02Var;
        ui uiVarA;
        ArrayList arrayList;
        s02 s02Var = this;
        String str = "jsonValue";
        y45.j(jSONObject, "jsonValue");
        Object objOpt = jSONObject.opt("ColorWizButton");
        String str2 = objOpt instanceof String ? (String) objOpt : null;
        Object objOpt2 = jSONObject.opt("ColorWizButtonText");
        String str3 = objOpt2 instanceof String ? (String) objOpt2 : null;
        Object objOpt3 = jSONObject.opt("ColorWizBack");
        String str4 = objOpt3 instanceof String ? (String) objOpt3 : null;
        Object objOpt4 = jSONObject.opt("ColorWizBackRight");
        String str5 = objOpt4 instanceof String ? (String) objOpt4 : null;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("backgroundColors");
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("smart-center");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("smart-centers");
        if (jSONObjectOptJSONObject2 != null) {
            s02Var.a.getClass();
            y45.j(jSONObjectOptJSONObject2, "jsonValue");
            j02Var = new j02(jSONObjectOptJSONObject2.getInt("x"), jSONObjectOptJSONObject2.getInt("y"), jSONObjectOptJSONObject2.getInt("w"), jSONObjectOptJSONObject2.getInt(CmcdData.STREAMING_FORMAT_HLS));
        } else {
            j02Var = null;
        }
        if (jSONObjectOptJSONObject != null) {
            s02Var.b.getClass();
            uiVarA = vi.a(jSONObjectOptJSONObject);
        } else {
            uiVarA = null;
        }
        if (jSONArrayOptJSONArray != null) {
            u15 u15VarQ = wn8.q(0, jSONArrayOptJSONArray.length());
            ArrayList arrayList2 = new ArrayList(defpackage.z71.v(u15VarQ, 10));
            Iterator it = u15VarQ.iterator();
            while (it.hasNext()) {
                int iNextInt = ((q15) it).nextInt();
                q02 q02Var = s02Var.a;
                JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray.optJSONObject(iNextInt);
                y45.i(jSONObjectOptJSONObject3, "optJSONObject(...)");
                q02Var.getClass();
                y45.j(jSONObjectOptJSONObject3, str);
                arrayList2.add(new j02(jSONObjectOptJSONObject3.getInt("x"), jSONObjectOptJSONObject3.getInt("y"), jSONObjectOptJSONObject3.getInt("w"), jSONObjectOptJSONObject3.getInt(CmcdData.STREAMING_FORMAT_HLS)));
                s02Var = this;
                jSONArrayOptJSONArray = jSONArrayOptJSONArray;
                str = str;
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return new r02(str2, str3, str4, str5, uiVarA, j02Var, arrayList);
    }
}
