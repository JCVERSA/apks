package com.doman.core.b.a.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.net.n;
import com.android.net.p;
import com.android.net.u;
import com.doman.core.a.j;
import com.doman.core.b.a.d;
import com.doman.core.b.c;
import com.doman.core.b.e;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class b extends d<j> {
    protected static p.a l = new p.a() {
        @Override
        public final void a(u uVar) {
        }
    };
    private e n;
    private p.b<j> o;
    private String p;

    public b(Context context, String str, e eVar, p.b<j> bVar, p.a aVar) {
        super(str, aVar);
        this.p = "AppTaskRequest";
        ((d) this).m = context;
        this.n = eVar;
        this.o = bVar;
    }

    private static j d(String str) {
        j jVar = null;
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
                JSONObject jSONObject2 = new JSONObject(com.doman.core.d.c.b.b(strOptString, c.c));
                j jVar2 = new j();
                try {
                    jVar2.e = jSONObject2.optString("type", "");
                    jVar2.a = jSONObject2.optInt("dy", 0);
                    jVar2.b = jSONObject2.optInt("fdc", 0);
                    JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("rt");
                    if (jSONArrayOptJSONArray != null) {
                        int length = jSONArrayOptJSONArray.length();
                        for (int i = 0; i < length; i++) {
                            String strOptString2 = jSONArrayOptJSONArray.optString(i, "");
                            if (!TextUtils.isEmpty(strOptString2)) {
                                jVar2.j.add(strOptString2);
                            }
                        }
                    }
                    jVar2.f = jSONObject2.optString(TypedValues.AttributesType.S_TARGET, "");
                    jVar2.c = jSONObject2.optInt("dy_c", 0);
                    jVar2.g = jSONObject2.optString("wh_l", "");
                    jVar2.d = jSONObject2.optString("ugt", "");
                    jVar2.h = jSONObject2.optBoolean("nd_cl", false);
                    jVar2.i = jSONObject2.optInt("du", 0);
                    return jVar2;
                } catch (Exception unused) {
                    jVar = jVar2;
                    return jVar;
                }
            }
            return new j();
        } catch (Exception unused2) {
        }
    }

    @Override
    public final j c(String str) {
        return d(str);
    }

    @Override
    public final Map<String, String> f() {
        e eVar = this.n;
        return eVar == null ? super.f() : eVar.a;
    }

    @Override
    public final n.b i() {
        return n.b.NORMAL;
    }

    @Override
    public final p.b<j> n() {
        return this.o;
    }
}
