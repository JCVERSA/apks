package com.yandex.mobile.ads.impl;

import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.y45;
import java.net.InetAddress;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Result;

public final class ig0 {
    private static final ConcurrentHashMap<String, Boolean> b = new ConcurrentHashMap<>();
    public static final int c = 0;
    private final ConcurrentHashMap<String, Boolean> a = b;

    public final boolean a(int i, String str) {
        Object objM279constructorimpl;
        y45.j(str, SerializableCookie.HOST);
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.a;
        Boolean boolValueOf = concurrentHashMap.get(str);
        if (boolValueOf == null) {
            w82.a.getClass();
            y45.j(str, SerializableCookie.HOST);
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(Boolean.valueOf(InetAddress.getByName(str).isReachable(i)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            Boolean bool = (Boolean) objM279constructorimpl;
            boolValueOf = Boolean.valueOf(bool != null ? bool.booleanValue() : false);
            Boolean boolPutIfAbsent = concurrentHashMap.putIfAbsent(str, boolValueOf);
            if (boolPutIfAbsent != null) {
                boolValueOf = boolPutIfAbsent;
            }
        }
        y45.i(boolValueOf, "getOrPut(...)");
        return boolValueOf.booleanValue();
    }
}
