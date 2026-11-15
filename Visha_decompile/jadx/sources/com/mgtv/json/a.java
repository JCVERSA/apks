package com.mgtv.json;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a {
    private static final Gson a = new Gson();
    private static final JsonParser b = new JsonParser();

    public static <T> T a(JsonElement jsonElement, @NonNull Type type) {
        if (jsonElement == null) {
            return null;
        }
        return (T) a.fromJson(jsonElement, type);
    }

    public static <T> T b(String str, @NonNull Type type) {
        if (str == null) {
            return null;
        }
        return (T) a.fromJson(b.parse(str), type);
    }

    public static <T extends JsonInterface> T a(String str, @NonNull Class<T> cls) {
        return (T) a(str, (Type) cls);
    }

    public static <T> T a(String str, @NonNull Type type) {
        if (str == null) {
            return null;
        }
        try {
            return (T) a.fromJson(b.parse(str), type);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NonNull
    public static <T> List<T> a(JsonArray jsonArray, @NonNull Type type) {
        ArrayList arrayList = new ArrayList();
        if (jsonArray == null) {
            return arrayList;
        }
        try {
            Iterator<JsonElement> it = jsonArray.iterator();
            while (it.hasNext()) {
                arrayList.add(a.fromJson(it.next(), type));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public static <T extends JsonInterface> String a(T t, @NonNull Class<? extends T> cls) {
        return a((Object) t, (Type) cls);
    }

    public static String a(Object obj, @NonNull Type type) {
        try {
            return a.toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static JsonElement a(String str) {
        try {
            return b.parse(str);
        } catch (Exception unused) {
            return a.toJsonTree(str);
        }
    }
}
