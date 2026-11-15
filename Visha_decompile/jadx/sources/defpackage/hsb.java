package defpackage;

import java.util.ArrayList;

public abstract class hsb {
    public static ArrayList a = new ArrayList(3);
    public static int b = 0;

    static {
        a(1);
        a(0);
        a(2);
        a(4);
    }

    public static void a(int i) {
        a.add(Integer.valueOf(i));
    }

    public static int b() {
        return b;
    }

    public static int c() {
        int iD = d(b);
        b = iD;
        return iD;
    }

    public static int d(int i) {
        if (a.size() == 0) {
            return i;
        }
        ArrayList arrayList = a;
        if (i >= ((Integer) arrayList.get(arrayList.size() - 1)).intValue()) {
            return ((Integer) a.get(0)).intValue();
        }
        for (int i2 = 0; i2 < a.size(); i2++) {
            if (i == ((Integer) a.get(i2)).intValue()) {
                return ((Integer) a.get(i2 + 1)).intValue();
            }
        }
        return i;
    }

    public static void e(int i) {
        b = i;
    }
}
