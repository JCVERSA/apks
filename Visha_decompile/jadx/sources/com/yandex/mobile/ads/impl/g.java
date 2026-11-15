package com.yandex.mobile.ads.impl;

import defpackage.abb;
import defpackage.cr5;
import defpackage.y45;
import java.util.LinkedHashSet;
import java.util.Objects;
import kotlin.Result;
import org.json.JSONArray;
import org.json.JSONObject;

public final class g {
    public static f a(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("experiments");
            JSONArray jSONArray = jSONObject.getJSONArray("test_ids");
            y45.i(jSONArray, "getJSONArray(...)");
            LinkedHashSet linkedHashSetA = a(jSONArray);
            y45.g(string);
            return new f(string, linkedHashSetA);
        } catch (Throwable unused) {
            sp0.b(new Object[0]);
            return null;
        }
    }

    private static LinkedHashSet a(JSONArray jSONArray) {
        Object objM279constructorimpl;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf(linkedHashSet.add(Long.valueOf(jSONArray.getLong(i)))));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
                Objects.toString(abb.a(jSONArray.get(i), cr5.a));
                sp0.b(new Object[0]);
            }
        }
        return linkedHashSet;
    }
}
