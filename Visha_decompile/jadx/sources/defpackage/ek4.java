package defpackage;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class ek4 {
    public static final Map a = new ConcurrentHashMap();

    public static Gson a() {
        return new GsonBuilder().serializeNulls().disableHtmlEscaping().create();
    }

    public static Object b(Gson gson, String str, Class cls) {
        return gson.fromJson(str, cls);
    }

    public static Object c(Gson gson, String str, Type type) {
        return gson.fromJson(str, type);
    }

    public static Object d(String str, Class cls) {
        return b(f(), str, cls);
    }

    public static Object e(String str, Type type) {
        return c(f(), str, type);
    }

    public static Gson f() {
        Map map = a;
        Gson gson = (Gson) map.get("delegateGson");
        if (gson != null) {
            return gson;
        }
        Gson gson2 = (Gson) map.get("defaultGson");
        if (gson2 != null) {
            return gson2;
        }
        Gson gsonA = a();
        map.put("defaultGson", gsonA);
        return gsonA;
    }

    public static Gson g() {
        Map map = a;
        Gson gson = (Gson) map.get("logUtilsGson");
        if (gson != null) {
            return gson;
        }
        Gson gsonCreate = new GsonBuilder().setPrettyPrinting().serializeNulls().create();
        map.put("logUtilsGson", gsonCreate);
        return gsonCreate;
    }

    public static String h(Gson gson, Object obj) {
        return gson.toJson(obj);
    }

    public static String i(Object obj) {
        return h(f(), obj);
    }
}
