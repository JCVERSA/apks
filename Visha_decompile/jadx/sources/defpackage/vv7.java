package defpackage;

import java.util.UUID;

public abstract class vv7 {
    public static long a = 5000;
    public static String b = "";

    public static String a() {
        return UUID.randomUUID().toString();
    }

    public static long b() {
        return a;
    }

    public static void c(String str) {
        b = str;
    }
}
