package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.lang.reflect.Method;

public final class w0 {
    public static String a() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, q11.class.getClassLoader());
            y45.i(cls, "forName(...)");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            declaredMethod.setAccessible(true);
            Method declaredMethod2 = cls.getDeclaredMethod("getProcessName", null);
            declaredMethod2.setAccessible(true);
            Object objInvoke = declaredMethod2.invoke(declaredMethod.invoke(null, null), null);
            y45.h(objInvoke, "null cannot be cast to non-null type kotlin.String");
            return (String) objInvoke;
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    public static String b() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread", false, q11.class.getClassLoader());
            y45.i(cls, "forName(...)");
            Method declaredMethod = cls.getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            y45.h(objInvoke, "null cannot be cast to non-null type kotlin.String");
            return (String) objInvoke;
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
