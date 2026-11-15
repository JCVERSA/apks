package com.transsion.transfer.wifi.util;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;

public final class e {

    public static final e f53894a = new e();

    private e() {
    }

    public final Map a(String urlString) {
        Object objM453constructorimpl;
        Intrinsics.h(urlString, "urlString");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(urlString);
            Intrinsics.g(uri, "parse(...)");
            linkedHashMap.put("urlPath", uri.getPath());
            Set<String> queryParameterNames = uri.getQueryParameterNames();
            Intrinsics.g(queryParameterNames, "getQueryParameterNames(...)");
            for (String str : queryParameterNames) {
                linkedHashMap.put(str, uri.getQueryParameter(str));
            }
            objM453constructorimpl = Result.m453constructorimpl(linkedHashMap);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Object obj = linkedHashMap;
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null) {
            obj = objM453constructorimpl;
        }
        return (Map) obj;
    }
}
