package defpackage;

public abstract class fz6 {
    public static String a() {
        int iC = ez6.c();
        if (iC == -101) {
            return "wifi";
        }
        if (iC == -1 || iC == 0) {
            return "";
        }
        if (iC == 1) {
            return "2G";
        }
        if (iC != 2) {
            return iC != 3 ? "" : "4G";
        }
        return "3G";
    }

    public static String b() {
        String strA = a();
        if ("wifi".equals(strA)) {
            return "wifi";
        }
        return "".equals(strA) ? "no_network" : "mobile";
    }

    public static boolean c() {
        return "wifi".equals(a());
    }
}
