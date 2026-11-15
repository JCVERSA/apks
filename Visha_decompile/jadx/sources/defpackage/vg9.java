package defpackage;

import java.util.ArrayList;
import java.util.List;

public abstract class vg9 {
    public static List a = new ArrayList();
    public static List b = new ArrayList();
    public static List c = new ArrayList();
    public static List d = new ArrayList();

    public static ArrayList a() {
        return (ArrayList) a;
    }

    public static ArrayList b() {
        return (ArrayList) c;
    }

    public static List c() {
        return b;
    }

    public static ArrayList d() {
        return (ArrayList) d;
    }

    public static void e(ArrayList arrayList) {
        a.clear();
        if (arrayList != null) {
            a.addAll(arrayList);
        }
    }

    public static void f(ArrayList arrayList) {
        c.clear();
        if (arrayList != null) {
            c.addAll(arrayList);
        }
    }

    public static void g(ArrayList arrayList) {
        b.clear();
        if (arrayList != null) {
            b.addAll(arrayList);
        }
    }

    public static void h(ArrayList arrayList) {
        d.clear();
        if (arrayList != null) {
            d.addAll(arrayList);
        }
    }
}
