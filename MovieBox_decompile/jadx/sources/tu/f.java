package tu;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import kotlin.jvm.internal.Intrinsics;

public abstract class f {

    public static final Gson f72838a;

    static {
        Gson gsonCreate = new GsonBuilder().serializeNulls().setPrettyPrinting().create();
        Intrinsics.g(gsonCreate, "create(...)");
        f72838a = gsonCreate;
    }
}
