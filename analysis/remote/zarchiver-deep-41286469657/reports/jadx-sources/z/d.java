package z;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.HashMap;

public final class d {

    public static final HashMap f2325a = new HashMap();

    public static final Method f2326b;

    static {
        new HashMap();
        try {
            f2326b = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.w("SystemServiceHelper", Log.getStackTraceString(e2));
        }
    }
}
