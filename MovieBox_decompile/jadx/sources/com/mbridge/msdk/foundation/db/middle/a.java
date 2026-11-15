package com.mbridge.msdk.foundation.db.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.g;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.w0;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    private static String f34272a = "FrequencyDaoMiddle";

    private static a f34273b = null;

    private static String f34274c = "FrequencyDaoMiddle";

    private static JSONArray f34275d = new JSONArray();

    private a() {
        c();
    }

    public static a b() {
        if (f34273b == null) {
            synchronized (a.class) {
                try {
                    if (f34273b == null) {
                        f34273b = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f34273b;
    }

    private void c() {
        try {
            String str = (String) w0.a(c.m().d(), f34274c, f34275d.toString());
            if (TextUtils.isEmpty(str)) {
                return;
            }
            f34275d = new JSONArray(str);
        } catch (Exception e10) {
            o0.b(f34272a, e10.getMessage());
        }
    }

    private void d() {
        try {
            if (f34275d != null) {
                w0.b(c.m().d(), f34274c, f34275d.toString());
            }
        } catch (Exception e10) {
            o0.b(f34272a, e10.getMessage());
        }
    }

    public void a(g gVar) {
        JSONObject jSONObjectA;
        if (gVar == null || (jSONObjectA = a(gVar.a(), gVar.c(), gVar.d(), gVar.f(), gVar.e(), gVar.b())) == null) {
            return;
        }
        if (f34275d == null) {
            f34275d = new JSONArray();
        }
        f34275d.put(jSONObjectA);
        d();
    }

    public void a(String str) {
        if (f34275d != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < f34275d.length(); i10++) {
                try {
                    JSONObject jSONObject = f34275d.getJSONObject(i10);
                    if (jSONObject != null) {
                        if (jSONObject.optString("id", "").equals(str)) {
                            jSONObject.put("impression_count", jSONObject.optInt("impression_count", 0) + 1);
                            jSONArray.put(jSONObject);
                        } else {
                            jSONArray.put(jSONObject);
                        }
                    }
                } catch (JSONException e10) {
                    o0.b(f34272a, e10.getMessage());
                }
            }
            if (jSONArray.length() > 0) {
                f34275d = jSONArray;
            }
            d();
        }
    }

    public String[] a() {
        ArrayList arrayList = new ArrayList();
        if (f34275d != null) {
            for (int i10 = 0; i10 < f34275d.length(); i10++) {
                try {
                    JSONObject jSONObject = f34275d.getJSONObject(i10);
                    if (jSONObject != null && jSONObject.optInt("fc_a") < jSONObject.optInt("impression_count")) {
                        arrayList.add(jSONObject.optString("id"));
                    }
                } catch (JSONException e10) {
                    o0.b(f34272a, e10.getMessage());
                }
            }
        }
        String[] strArr = new String[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            strArr[i11] = (String) arrayList.get(i11);
        }
        return strArr;
    }

    public void a(long j10) {
        if (f34275d != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i10 = 0; i10 < f34275d.length(); i10++) {
                try {
                    JSONObject jSONObject = f34275d.getJSONObject(i10);
                    if (jSONObject != null && jSONObject.optInt("ts") >= j10) {
                        jSONArray.put(jSONObject);
                    }
                } catch (JSONException e10) {
                    o0.b(f34272a, e10.getMessage());
                }
            }
            if (jSONArray.length() > 0) {
                f34275d = jSONArray;
            }
        }
        d();
    }

    private JSONObject a(String str, int i10, int i11, long j10, int i12, int i13) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("id", str);
                jSONObject.put("fc_a", i10);
                jSONObject.put("fc_b", i11);
                jSONObject.put("ts", j10);
                jSONObject.put("impression_count", i12);
                jSONObject.put("click_count", i13);
            } catch (Exception e10) {
                e = e10;
                o0.b(f34272a, e.getMessage());
            }
        } catch (Exception e11) {
            e = e11;
            jSONObject = null;
        }
        return jSONObject;
    }
}
