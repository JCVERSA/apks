package defpackage;

public abstract class ae8 {
    public static void a(Object... objArr) {
        for (Object obj : objArr) {
            obj.getClass();
        }
    }

    public static void b(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void c(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static Object d(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object e(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(str);
    }
}
