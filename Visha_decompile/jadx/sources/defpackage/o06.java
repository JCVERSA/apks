package defpackage;

public abstract class o06 {
    public static long a = 0;
    public static long b = 0;
    public static long c = 0;
    public static String d = "";
    public static String e = "playshow";
    public static String f = "others";

    public static String a() {
        return d;
    }

    public static long b() {
        long j = a;
        if (j == 0) {
            return 0L;
        }
        long j2 = b;
        if (j2 == 0 || c == 0) {
            return 0L;
        }
        long j3 = j2 - j;
        if (j3 > 0) {
            return j3;
        }
        return 0L;
    }

    public static long c() {
        if (a == 0) {
            return 0L;
        }
        long j = b;
        if (j == 0) {
            return 0L;
        }
        long j2 = c;
        if (j2 == 0) {
            return 0L;
        }
        long j3 = j2 - j;
        if (j3 > 0) {
            return j3;
        }
        return 0L;
    }

    public static void d() {
        if (pp3.j()) {
            c = System.currentTimeMillis();
        }
    }

    public static void e(String str) {
        if (pp3.j()) {
            a = System.currentTimeMillis();
            d = str;
        }
    }

    public static void f() {
        if (pp3.j()) {
            b = System.currentTimeMillis();
        }
    }
}
