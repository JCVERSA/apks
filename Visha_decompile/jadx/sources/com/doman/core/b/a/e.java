package com.doman.core.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.android.net.n;
import com.android.net.p;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class e extends d {
    private com.doman.core.b.e l;
    private p.b<List<com.doman.core.a.d>> n;
    private String o;

    public e(Context context, String str, com.doman.core.b.e eVar, p.b<List<com.doman.core.a.d>> bVar, p.a aVar) {
        super(str, aVar);
        this.o = "GCTAG";
        ((d) this).m = context;
        this.l = eVar;
        this.n = bVar;
    }

    private static List<com.doman.core.a.d> d(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.getBoolean("success")) {
                return null;
            }
            String strOptString = jSONObject.optString("data");
            if (!TextUtils.isEmpty(strOptString) && !"null".equalsIgnoreCase(strOptString)) {
                JSONArray jSONArray = new JSONArray(com.doman.core.d.c.b.b(strOptString, com.doman.core.b.c.c));
                if (jSONArray.length() <= 0) {
                    return null;
                }
                int length = jSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        com.doman.core.a.d dVar = new com.doman.core.a.d();
                        try {
                            dVar.b = jSONObjectOptJSONObject.optInt("type", 0);
                            dVar.d = jSONObjectOptJSONObject.optLong("iv", 0L);
                            dVar.c = jSONObjectOptJSONObject.optString("cadd", "");
                            dVar.g = jSONObjectOptJSONObject.optInt("screen", 0);
                            dVar.e = jSONObjectOptJSONObject.optString("eadd", "");
                            dVar.f = jSONObjectOptJSONObject.optInt("front", 0);
                            dVar.h = jSONObjectOptJSONObject.optString("extra", "");
                        } catch (Throwable unused) {
                        }
                        arrayList.add(dVar);
                    }
                }
            }
            return null;
        } catch (Throwable unused2) {
        }
        return arrayList;
    }

    @Override
    public final Object c(String str) {
        return d(str);
    }

    @Override
    public final Map<String, String> f() {
        com.doman.core.b.e eVar = this.l;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final n.b i() {
        return n.b.LOW;
    }

    @Override
    public final p.b<List<com.doman.core.a.d>> n() {
        return this.n;
    }
}
