package defpackage;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class ued {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;

    public static List l(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                ued uedVar = new ued();
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                uedVar.j(jSONObject.has("handlerName") ? jSONObject.getString("handlerName") : null);
                uedVar.f(jSONObject.has("callbackId") ? jSONObject.getString("callbackId") : null);
                uedVar.d(jSONObject.has("responseData") ? jSONObject.getString("responseData") : null);
                uedVar.b(jSONObject.has("responseId") ? jSONObject.getString("responseId") : null);
                uedVar.h(jSONObject.has("data") ? jSONObject.getString("data") : null);
                arrayList.add(uedVar);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public String a() {
        return this.b;
    }

    public void b(String str) {
        this.b = str;
    }

    public String c() {
        return this.c;
    }

    public void d(String str) {
        this.c = str;
    }

    public String e() {
        return this.a;
    }

    public void f(String str) {
        this.a = str;
    }

    public String g() {
        return this.d;
    }

    public void h(String str) {
        this.d = str;
    }

    public String i() {
        return this.e;
    }

    public void j(String str) {
        this.e = str;
    }

    public String k() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("callbackId", e());
            jSONObject.put("data", g());
            jSONObject.put("handlerName", i());
            String strC = c();
            if (TextUtils.isEmpty(strC)) {
                jSONObject.put("responseData", strC);
            } else {
                jSONObject.put("responseData", new JSONTokener(strC).nextValue());
            }
            jSONObject.put("responseData", c());
            jSONObject.put("responseId", a());
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
