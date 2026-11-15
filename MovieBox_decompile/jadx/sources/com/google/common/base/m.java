package com.google.common.base;

public abstract class m {
    private static String a(int i10, int i11, String str) {
        if (i10 < 0) {
            return p.c("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return p.c("%s (%s) must be less than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }

    private static String b(int i10, int i11, String str) {
        if (i10 < 0) {
            return p.c("%s (%s) must not be negative", str, Integer.valueOf(i10));
        }
        if (i11 >= 0) {
            return p.c("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        throw new IllegalArgumentException("negative size: " + i11);
    }

    private static String c(int i10, int i11, int i12) {
        if (i10 < 0 || i10 > i12) {
            return b(i10, i12, "start index");
        }
        return (i11 < 0 || i11 > i12) ? b(i11, i12, "end index") : p.c("end index (%s) must not be less than start index (%s)", Integer.valueOf(i11), Integer.valueOf(i10));
    }

    public static void d(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static void f(boolean z10, String str, int i10) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Integer.valueOf(i10)));
        }
    }

    public static void g(boolean z10, String str, int i10, int i11) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Integer.valueOf(i10), Integer.valueOf(i11)));
        }
    }

    public static void h(boolean z10, String str, long j10) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Long.valueOf(j10)));
        }
    }

    public static void i(boolean z10, String str, long j10, long j11) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, Long.valueOf(j10), Long.valueOf(j11)));
        }
    }

    public static void j(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, obj));
        }
    }

    public static void k(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, obj, obj2));
        }
    }

    public static void l(boolean z10, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (!z10) {
            throw new IllegalArgumentException(p.c(str, obj, obj2, obj3, obj4));
        }
    }

    public static int m(int i10, int i11) {
        return n(i10, i11, "index");
    }

    public static int n(int i10, int i11, String str) {
        if (i10 < 0 || i10 >= i11) {
            throw new IndexOutOfBoundsException(a(i10, i11, str));
        }
        return i10;
    }

    public static Object o(Object obj) {
        obj.getClass();
        return obj;
    }

    public static Object p(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static Object q(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(p.c(str, obj2));
    }

    public static int r(int i10, int i11) {
        return s(i10, i11, "index");
    }

    public static int s(int i10, int i11, String str) {
        if (i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException(b(i10, i11, str));
        }
        return i10;
    }

    public static void t(int i10, int i11, int i12) {
        if (i10 < 0 || i11 < i10 || i11 > i12) {
            throw new IndexOutOfBoundsException(c(i10, i11, i12));
        }
    }

    public static void u(boolean z10) {
        if (!z10) {
            throw new IllegalStateException();
        }
    }

    public static void v(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void w(boolean z10, String str, int i10) {
        if (!z10) {
            throw new IllegalStateException(p.c(str, Integer.valueOf(i10)));
        }
    }

    public static void x(boolean z10, String str, Object obj) {
        if (!z10) {
            throw new IllegalStateException(p.c(str, obj));
        }
    }
}
