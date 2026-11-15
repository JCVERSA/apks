package defpackage;

import java.util.ArrayList;
import java.util.List;

public abstract class v19 {
    public static int a;
    public static List b = new ArrayList();

    public static int a() {
        return a;
    }

    public static List b() {
        return b;
    }

    public static void c() {
        if (b != null) {
            b = null;
        }
    }

    public static void d(int i) {
        a = i;
    }

    public static void e(List list) {
        b = list;
    }
}
