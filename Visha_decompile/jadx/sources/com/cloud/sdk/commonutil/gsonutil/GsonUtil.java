package com.cloud.sdk.commonutil.gsonutil;

import com.google.gson.Gson;
import defpackage.bk4;
import defpackage.ja1;
import java.lang.reflect.Type;

public abstract class GsonUtil {

    public static class GsonParseException extends Exception {
        public GsonParseException(Throwable th) {
            super(th);
        }
    }

    public static Object a(String str, Class cls) throws GsonParseException {
        try {
            return c().fromJson(str, cls);
        } catch (Exception e) {
            throw new GsonParseException(e);
        }
    }

    public static Object b(String str, Type type) throws GsonParseException {
        try {
            return c().fromJson(str, type);
        } catch (Exception e) {
            throw new GsonParseException(e);
        }
    }

    public static Gson c() {
        return bk4.a();
    }

    public static String d(Object obj) {
        try {
            return c().toJson(obj);
        } catch (Exception e) {
            ja1.Log().e("GsonUtil", e.getMessage());
            return "";
        }
    }
}
