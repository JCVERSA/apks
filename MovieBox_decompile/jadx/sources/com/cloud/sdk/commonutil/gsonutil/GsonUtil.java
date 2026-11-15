package com.cloud.sdk.commonutil.gsonutil;

import com.cloud.sdk.commonutil.util.c;
import com.google.gson.Gson;
import java.lang.reflect.Type;
import m7.e;

public class GsonUtil {

    public static class GsonParseException extends Exception {
        public GsonParseException(Throwable th2) {
            super(th2);
        }
    }

    public static Object a(String str, Class cls) throws GsonParseException {
        try {
            return c().fromJson(str, cls);
        } catch (Exception e10) {
            throw new GsonParseException(e10);
        }
    }

    public static Object b(String str, Type type) throws GsonParseException {
        try {
            return c().fromJson(str, type);
        } catch (Exception e10) {
            throw new GsonParseException(e10);
        }
    }

    public static Gson c() {
        return e.a();
    }

    public static String d(Object obj) {
        try {
            return c().toJson(obj);
        } catch (Exception e10) {
            c.Log().e("GsonUtil", e10.getMessage());
            return "";
        }
    }
}
