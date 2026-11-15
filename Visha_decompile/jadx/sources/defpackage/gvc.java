package defpackage;

import java.util.Objects;

public abstract class gvc {
    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        Objects.requireNonNull(obj2, "defaultObj");
        return obj2;
    }
}
