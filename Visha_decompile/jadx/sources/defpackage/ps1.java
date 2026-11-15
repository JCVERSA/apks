package defpackage;

import java.util.ArrayList;

public abstract class ps1 {
    public static ArrayList a = new ArrayList();

    public static ArrayList a() {
        return a;
    }

    public static void b(ArrayList arrayList) {
        a.clear();
        a.addAll(arrayList);
    }
}
