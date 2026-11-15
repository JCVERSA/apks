package defpackage;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import java.lang.reflect.Type;

public abstract class fi1 {

    public static class a {
        public static final Gson a = new GsonBuilder().registerTypeAdapter(Integer.class, new t25()).registerTypeAdapter(Integer.TYPE, new t25()).registerTypeAdapter(Double.class, new sx2()).registerTypeAdapter(Double.TYPE, new sx2()).registerTypeAdapter(Long.class, new mr5()).registerTypeAdapter(Long.TYPE, new mr5()).registerTypeAdapter(Float.class, new dz3()).registerTypeAdapter(Float.TYPE, new dz3()).registerTypeAdapter(Boolean.class, new fi0()).registerTypeAdapter(Boolean.TYPE, new fi0()).registerTypeAdapter(String.class, new l0a()).addSerializationExclusionStrategy(new b()).addDeserializationExclusionStrategy(new C0343a()).create();

        public class C0343a implements ExclusionStrategy {
            @Override
            public boolean shouldSkipClass(Class cls) {
                return false;
            }

            @Override
            public boolean shouldSkipField(FieldAttributes fieldAttributes) {
                Expose expose = (Expose) fieldAttributes.getAnnotation(Expose.class);
                return (expose == null || expose.deserialize()) ? false : true;
            }
        }

        public class b implements ExclusionStrategy {
            @Override
            public boolean shouldSkipClass(Class cls) {
                return false;
            }

            @Override
            public boolean shouldSkipField(FieldAttributes fieldAttributes) {
                Expose expose = (Expose) fieldAttributes.getAnnotation(Expose.class);
                return (expose == null || expose.serialize()) ? false : true;
            }
        }
    }

    public static Gson a() {
        return a.a;
    }

    public static Object b(String str, Class cls) {
        return a().fromJson(str, cls);
    }

    public static Object c(String str, Type type) {
        return a().fromJson(str, type);
    }

    public static Object d(String str, Class cls) {
        try {
            return a().fromJson(str, cls);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String e(Object obj) {
        return a().toJson(obj);
    }
}
