package defpackage;

public abstract class fp7 {
    public static Object a(Object obj, Class cls) {
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }
}
