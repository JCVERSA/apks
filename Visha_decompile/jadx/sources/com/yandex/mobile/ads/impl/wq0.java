package com.yandex.mobile.ads.impl;

import defpackage.y45;
import kotlin.Result;
import org.json.JSONObject;

public final class wq0 {
    public static final String a(String str, JSONObject jSONObject) {
        Object objM279constructorimpl;
        y45.j(jSONObject, "<this>");
        y45.j(str, "name");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(jSONObject.getString(str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (String) objM279constructorimpl;
    }
}
