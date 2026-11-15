package defpackage;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.internal.bind.TypeAdapters;
import java.math.BigDecimal;

public abstract class bk4 {
    public static Gson a;

    public static synchronized Gson a() {
        try {
            if (a == null) {
                a = b().create();
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public static GsonBuilder b() {
        return new GsonBuilder().registerTypeAdapterFactory(TypeAdapters.newFactory(String.class, new k0a())).registerTypeAdapterFactory(TypeAdapters.newFactory(Boolean.TYPE, Boolean.class, new ei0())).registerTypeAdapterFactory(TypeAdapters.newFactory(Integer.TYPE, Integer.class, new s25())).registerTypeAdapterFactory(TypeAdapters.newFactory(Long.TYPE, Long.class, new lr5())).registerTypeAdapterFactory(TypeAdapters.newFactory(Float.TYPE, Float.class, new cz3())).registerTypeAdapterFactory(TypeAdapters.newFactory(Double.TYPE, Double.class, new rx2())).registerTypeAdapterFactory(TypeAdapters.newFactory(BigDecimal.class, new ee0()));
    }
}
