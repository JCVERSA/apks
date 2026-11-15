package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import defpackage.zfb;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Result;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class o80 {
    private final q80 a;
    private final g b;

    public o80(int i) {
        this(new q80(), new g());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a1 A[Catch: all -> 0x00a8, TRY_LEAVE, TryCatch #0 {all -> 0x00a8, blocks: (B:3:0x0001, B:6:0x0006, B:8:0x0027, B:15:0x003c, B:16:0x004d, B:19:0x0052, B:22:0x006c, B:24:0x0086, B:31:0x00a1, B:27:0x009a, B:11:0x0035), top: B:36:0x0001 }] */
    public final n80 a(String str) {
        ts tsVar;
        m80 m80Var;
        o0.a aVar;
        try {
            if (str == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            ts.a aVar2 = ts.c;
            String string = jSONObject.getString(TrackingKey.AD_TYPE);
            y45.i(string, "getString(...)");
            aVar2.getClass();
            y45.j(string, ES6Iterator.VALUE_PROPERTY);
            ts[] tsVarArrValues = ts.values();
            int length = tsVarArrValues.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    tsVar = null;
                    break;
                }
                ts tsVar2 = tsVarArrValues[i];
                if (y45.e(tsVar2.a(), string)) {
                    tsVar = tsVar2;
                    break;
                }
                i++;
            }
            if (tsVar == null) {
                return null;
            }
            long j = jSONObject.getLong("start_time");
            q80 q80Var = this.a;
            String strOptString = jSONObject.optString("false_click");
            q80Var.getClass();
            try {
                if (strOptString == null) {
                    m80Var = null;
                } else {
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    String string2 = jSONObject2.getString("url");
                    long j2 = jSONObject2.getLong("interval");
                    y45.g(string2);
                    m80Var = new m80(string2, j2);
                }
            } catch (JSONException unused) {
            }
            HashMap mapA = a(jSONObject);
            g gVar = this.b;
            String strOptString2 = jSONObject.optString("ab_experiments");
            gVar.getClass();
            f fVarA = g.a(strOptString2);
            for (o0.a aVar3 : o0.a.values()) {
                if (y45.e(aVar3.a(), jSONObject.getString("type"))) {
                    aVar = aVar3;
                    if (aVar == null) {
                        return null;
                    }
                    return new n80(tsVar, j, aVar, m80Var, mapA, fVarA);
                }
            }
            aVar = null;
            if (aVar == null) {
                return null;
            }
            return new n80(tsVar, j, aVar, m80Var, mapA, fVarA);
        } catch (Throwable unused2) {
            return null;
        }
    }

    public o80(q80 q80Var, g gVar) {
        y45.j(q80Var, "falseClickFormatter");
        y45.j(gVar, "abExperimentDataConverter");
        this.a = q80Var;
        this.b = gVar;
    }

    private static HashMap a(JSONObject jSONObject) {
        HashMap map = new HashMap();
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObject2 = jSONObject.getJSONObject("report_data");
            Iterator<String> itKeys = jSONObject2.keys();
            y45.i(itKeys, "keys(...)");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                y45.g(next);
                map.put(next, jSONObject2.get(next));
            }
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(kotlin.c.a(th));
        }
        return map;
    }

    public final String a(n80 n80Var) {
        String string;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TrackingKey.AD_TYPE, n80Var.c().a());
        jSONObject.put("start_time", n80Var.f());
        jSONObject.put("type", n80Var.b().a());
        q80 q80Var = this.a;
        m80 m80VarD = n80Var.d();
        q80Var.getClass();
        String string2 = null;
        if (m80VarD != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("interval", m80VarD.c());
            jSONObject2.put("url", m80VarD.d());
            string = jSONObject2.toString();
        } else {
            string = null;
        }
        jSONObject.put("false_click", string);
        jSONObject.put("report_data", new JSONObject(n80Var.e()));
        g gVar = this.b;
        f fVarA = n80Var.a();
        gVar.getClass();
        if (fVarA != null) {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("experiments", fVarA.a());
            jSONObject3.put("test_ids", fVarA.b());
            string2 = jSONObject3.toString();
        }
        jSONObject.put("ab_experiments", string2);
        return jSONObject.toString();
    }
}
