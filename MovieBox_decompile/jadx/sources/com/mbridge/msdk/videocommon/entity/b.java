package com.mbridge.msdk.videocommon.entity;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class b {

    private int f39124a;

    private int f39125b;

    private a f39126c;

    public b(int i10, int i11, a aVar) {
        this.f39124a = i10;
        this.f39125b = i11;
        this.f39126c = aVar;
    }

    public int a() {
        return this.f39124a;
    }

    public int b() {
        return this.f39125b;
    }

    public static List<b> a(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    int iOptInt = jSONObjectOptJSONObject.optInt("id");
                    int iOptInt2 = jSONObjectOptJSONObject.optInt("timeout");
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("params");
                    arrayList.add(new b(iOptInt, iOptInt2, jSONObjectOptJSONObject2 != null ? a.a(jSONObjectOptJSONObject2) : null));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return arrayList;
        }
        return null;
    }
}
