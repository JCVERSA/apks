package defpackage;

public abstract class v2i {
    public static int a(int i, int i2, String str) {
        String strB;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strB = j3i.b("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                throw new IllegalArgumentException("negative size: " + i2);
            }
            strB = j3i.b("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strB);
    }

    public static int b(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(n(i, i2, "index"));
        }
        return i;
    }

    public static Object c(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static Object d(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(j3i.b(str, obj2));
    }

    public static void e(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void f(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void g(boolean z, String str, char c) {
        if (!z) {
            throw new IllegalArgumentException(j3i.b(str, Character.valueOf(c)));
        }
    }

    public static void h(boolean z, String str, long j) {
        if (!z) {
            throw new IllegalArgumentException(j3i.b(str, Long.valueOf(j)));
        }
    }

    public static void i(boolean z, String str, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(j3i.b(str, obj));
        }
    }

    public static void j(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new IllegalArgumentException(j3i.b(str, Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    public static void k(int i, int i2, int i3) {
        String strN;
        if (i < 0 || i2 < i || i2 > i3) {
            if (i < 0 || i > i3) {
                strN = n(i, i3, "start index");
            } else {
                strN = (i2 < 0 || i2 > i3) ? n(i2, i3, "end index") : j3i.b("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            }
            throw new IndexOutOfBoundsException(strN);
        }
    }

    public static void l(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void m(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException((String) obj);
        }
    }

    public static String n(int i, int i2, String str) {
        if (i < 0) {
            return j3i.b("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return j3i.b("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException("negative size: " + i2);
    }
}
