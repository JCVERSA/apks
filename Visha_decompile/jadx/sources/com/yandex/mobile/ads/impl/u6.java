package com.yandex.mobile.ads.impl;

import defpackage.e74;
import defpackage.eb5;
import defpackage.ka5;
import defpackage.ky5;
import defpackage.x95;
import defpackage.xe9;
import defpackage.y45;
import defpackage.ye9;
import defpackage.zfb;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.jvm.internal.Lambda;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class u6 {

    public static final class a extends Lambda implements e74 {
        final b7 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b7 b7Var) {
            super(1);
            this.b = b7Var;
        }

        @Override
        public final Object invoke(Object obj) {
            x95 x95Var = (x95) obj;
            y45.j(x95Var, "$this$putJsonArray");
            Iterator<T> it = this.b.f().iterator();
            while (it.hasNext()) {
                ka5.a(x95Var, (String) it.next());
            }
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements e74 {
        final b7 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(b7 b7Var) {
            super(1);
            this.b = b7Var;
        }

        @Override
        public final Object invoke(Object obj) {
            eb5 eb5Var = (eb5) obj;
            y45.j(eb5Var, "$this$putJsonObject");
            Iterator<T> it = this.b.a().entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                ka5.f(eb5Var, (String) entry.getKey(), new v6(entry));
            }
            return zfb.a;
        }
    }

    public static b7 a(String str) {
        Object objM279constructorimpl;
        y45.j(str, "jsonData");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(a(new JSONObject(str)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            sp0.b(new Object[0]);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (b7) objM279constructorimpl;
    }

    private static Map b(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        Map mapE = ky5.e();
        Iterator<String> itKeys = jSONObject.keys();
        y45.i(itKeys, "keys(...)");
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            c7 c7Var = new c7(jSONObject2.getBoolean("isDisabled"), jSONObject2.getInt("usagePercent"));
            y45.g(next);
            mapE.put(next, c7Var);
        }
        return ky5.d(mapE);
    }

    public static b7 a(JSONObject jSONObject) {
        Object objM279constructorimpl;
        Set setF;
        if (jSONObject == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z = jSONObject.getBoolean("isEnabled");
            boolean z2 = jSONObject.getBoolean("isInDebug");
            String string = jSONObject.getString("apiKey");
            y45.i(string, "getString(...)");
            long j = jSONObject.getLong("validationTimeoutInSec");
            int i = jSONObject.getInt("usagePercent");
            boolean z3 = jSONObject.getBoolean("willBlockAdOnInternalError");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("enabledAdUnits");
            if (jSONArrayOptJSONArray != null) {
                Set setB = xe9.b();
                int length = jSONArrayOptJSONArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    String string2 = jSONArrayOptJSONArray.getString(i2);
                    y45.g(string2);
                    if (string2.length() > 0) {
                        setB.add(string2);
                    }
                }
                setF = xe9.a(setB);
            } else {
                setF = null;
            }
            if (setF == null) {
                setF = ye9.f();
            }
            Set set = setF;
            Map mapB = b(jSONObject.optJSONObject("adNetworksCustomParameters"));
            if (mapB == null) {
                mapB = kotlin.collections.a.l();
            }
            objM279constructorimpl = Result.m279constructorimpl(new b7(z, z2, string, j, i, z3, set, mapB));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            jSONObject.toString();
            sp0.b(new Object[0]);
        }
        return (b7) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
    }

    public static String a(b7 b7Var) {
        if (b7Var == null) {
            return null;
        }
        eb5 eb5Var = new eb5();
        ka5.b(eb5Var, "isEnabled", Boolean.valueOf(b7Var.e()));
        ka5.b(eb5Var, "isInDebug", Boolean.valueOf(b7Var.d()));
        ka5.d(eb5Var, "apiKey", b7Var.b());
        ka5.c(eb5Var, "validationTimeoutInSec", Long.valueOf(b7Var.h()));
        ka5.c(eb5Var, "usagePercent", Integer.valueOf(b7Var.g()));
        ka5.b(eb5Var, "willBlockAdOnInternalError", Boolean.valueOf(b7Var.c()));
        ka5.e(eb5Var, "enabledAdUnits", new a(b7Var));
        ka5.f(eb5Var, "adNetworksCustomParameters", new b(b7Var));
        return eb5Var.a().toString();
    }
}
