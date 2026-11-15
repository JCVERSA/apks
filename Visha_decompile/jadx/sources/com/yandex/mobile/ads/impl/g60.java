package com.yandex.mobile.ads.impl;

import defpackage.xe9;
import defpackage.y45;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import kotlin.Result;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class g60 {
    public static Set a(String str) {
        Object objM279constructorimpl;
        y45.j(str, "jsonData");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(a(new JSONArray(str)));
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
        return (Set) objM279constructorimpl;
    }

    public static Set a(JSONArray jSONArray) {
        Object objM279constructorimpl;
        y45.j(jSONArray, "jsonArray");
        try {
            Result.Companion companion = Result.INSTANCE;
            Set setB = xe9.b();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString("type");
                y45.i(string, "getString(...)");
                f60 f60VarValueOf = f60.valueOf(string);
                String string2 = jSONObject.getString(ES6Iterator.VALUE_PROPERTY);
                y45.i(string2, "getString(...)");
                setB.add(new e60(f60VarValueOf, string2));
            }
            objM279constructorimpl = Result.m279constructorimpl(xe9.a(setB));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            Objects.toString(jSONArray);
            sp0.b(new Object[0]);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (Set) objM279constructorimpl;
    }

    public static String a(Set set) throws JSONException {
        if (set != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                e60 e60Var = (e60) it.next();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("type", e60Var.a().name());
                jSONObject.put(ES6Iterator.VALUE_PROPERTY, e60Var.b());
                jSONArray = jSONArray.put(jSONObject);
                y45.i(jSONArray, "put(...)");
            }
            if (jSONArray != null) {
                return jSONArray.toString();
            }
        }
        return null;
    }
}
