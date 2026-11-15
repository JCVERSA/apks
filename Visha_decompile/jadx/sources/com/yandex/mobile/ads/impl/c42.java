package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.concurrent.Callable;

public final class c42 {
    public static Object a(Callable callable, Object obj, String str, String str2) {
        y45.j(callable, "tryBlock");
        y45.j(str, "whileWhat");
        y45.j(str2, "whatIsNull");
        if (obj == null) {
            sp0.f(new Object[0]);
            return null;
        }
        try {
            return callable.call();
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
