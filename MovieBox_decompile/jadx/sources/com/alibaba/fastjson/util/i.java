package com.alibaba.fastjson.util;

import java.util.concurrent.Callable;

public class i {

    private static boolean f17643a = false;

    static {
        try {
            Class.forName("java.sql.Time");
            f17643a = true;
        } catch (Throwable unused) {
            f17643a = false;
        }
    }

    public static Object a(c cVar, Object obj, Object obj2) {
        if (f17643a) {
            return cVar.apply(obj, obj2);
        }
        return null;
    }

    public static Object b(e eVar, Object obj) {
        if (f17643a) {
            return eVar.apply(obj);
        }
        return null;
    }

    public static Object c(Callable callable) {
        if (!f17643a) {
            return null;
        }
        try {
            return callable.call();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }
}
