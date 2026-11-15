package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.lang.reflect.Method;

public final class xp {
    private final Method a;
    private final Method b;
    private final Method c;

    public static final class a {
        public static xp a() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new xp(method3, method2, method);
        }
    }

    public xp(Method method, Method method2, Method method3) {
        this.a = method;
        this.b = method2;
        this.c = method3;
    }

    public final Object a() {
        y45.j("response.body().close()", "closer");
        Method method = this.a;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(null, null);
                Method method2 = this.b;
                y45.g(method2);
                method2.invoke(objInvoke, "response.body().close()");
                return objInvoke;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public final boolean a(Object obj) {
        if (obj != null) {
            try {
                Method method = this.c;
                y45.g(method);
                method.invoke(obj, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
