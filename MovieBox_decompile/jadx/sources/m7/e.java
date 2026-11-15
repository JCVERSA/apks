package m7;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.internal.bind.TypeAdapters;
import java.math.BigDecimal;

public abstract class e {

    private static Gson f66288a;

    public static synchronized Gson a() {
        try {
            if (f66288a == null) {
                f66288a = b().create();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f66288a;
    }

    public static GsonBuilder b() {
        return new GsonBuilder().registerTypeAdapterFactory(TypeAdapters.newFactory(String.class, new h())).registerTypeAdapterFactory(TypeAdapters.newFactory(Boolean.TYPE, Boolean.class, new b())).registerTypeAdapterFactory(TypeAdapters.newFactory(Integer.TYPE, Integer.class, new f())).registerTypeAdapterFactory(TypeAdapters.newFactory(Long.TYPE, Long.class, new g())).registerTypeAdapterFactory(TypeAdapters.newFactory(Float.TYPE, Float.class, new d())).registerTypeAdapterFactory(TypeAdapters.newFactory(Double.TYPE, Double.class, new c())).registerTypeAdapterFactory(TypeAdapters.newFactory(BigDecimal.class, new a()));
    }
}
