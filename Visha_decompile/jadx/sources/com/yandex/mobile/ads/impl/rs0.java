package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.concurrent.ConcurrentHashMap;

public final class rs0 {
    private static final ConcurrentHashMap<String, ps0> a = new ConcurrentHashMap<>();
    public static final int b = 0;

    public static final ps0 a(Context context) {
        y45.j(context, "context");
        return a(context, "YadPreferenceFile");
    }

    public static final ps0 a(Context context, String str) {
        ps0 ps0VarPutIfAbsent;
        y45.j(context, "context");
        y45.j(str, "filename");
        ConcurrentHashMap<String, ps0> concurrentHashMap = a;
        ps0 qs0Var = concurrentHashMap.get(str);
        if (qs0Var == null && (ps0VarPutIfAbsent = concurrentHashMap.putIfAbsent(str, (qs0Var = new qs0(context, str, new by1())))) != null) {
            qs0Var = ps0VarPutIfAbsent;
        }
        y45.i(qs0Var, "getOrPut(...)");
        return qs0Var;
    }
}
