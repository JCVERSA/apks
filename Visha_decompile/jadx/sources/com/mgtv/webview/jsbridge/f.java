package com.mgtv.webview.jsbridge;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class f {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    public String a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.a;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("callbackId", c());
            jSONObject.put("data", d());
            jSONObject.put("handlerName", e());
            String strB = b();
            if (TextUtils.isEmpty(strB)) {
                jSONObject.put("responseData", strB);
            } else {
                jSONObject.put("responseData", new JSONTokener(strB).nextValue());
            }
            jSONObject.put("responseData", b());
            jSONObject.put("responseId", a());
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(String str) {
        this.b = str;
    }

    public void b(String str) {
        this.c = str;
    }

    public void c(String str) {
        this.a = str;
    }

    public void d(String str) {
        this.d = str;
    }

    public void e(String str) {
        this.e = str;
    }

    public static List<f> f(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                f fVar = new f();
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                fVar.e(jSONObject.has("handlerName") ? jSONObject.getString("handlerName") : null);
                fVar.c(jSONObject.has("callbackId") ? jSONObject.getString("callbackId") : null);
                fVar.b(jSONObject.has("responseData") ? jSONObject.getString("responseData") : null);
                fVar.a(jSONObject.has("responseId") ? jSONObject.getString("responseId") : null);
                fVar.d(jSONObject.has("data") ? jSONObject.getString("data") : null);
                arrayList.add(fVar);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }
}
