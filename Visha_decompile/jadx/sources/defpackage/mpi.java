package defpackage;

import android.os.Bundle;
import org.mozilla.javascript.ES6Iterator;

public abstract class mpi {
    public static Object a(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), obj2.getClass().getCanonicalName()));
    }

    public static void b(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble(ES6Iterator.VALUE_PROPERTY, ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong(ES6Iterator.VALUE_PROPERTY, ((Long) obj).longValue());
        } else {
            bundle.putString(ES6Iterator.VALUE_PROPERTY, obj.toString());
        }
    }
}
