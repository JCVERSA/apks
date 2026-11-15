package cv;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public final class a {

    public static final a f58657a = new a();

    private static final Gson f58658b = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();

    private a() {
    }

    public final String a(Object obj) {
        if (obj == null) {
            return "";
        }
        try {
            return new Gson().toJson(obj);
        } catch (Exception unused) {
            return "";
        }
    }
}
