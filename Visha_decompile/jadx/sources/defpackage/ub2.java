package defpackage;

import java.util.HashMap;
import java.util.Map;

public abstract class ub2 {
    public static Map a = new HashMap();
    public static Map b = new HashMap();

    static {
        Map map = a;
        l1 l1Var = cx6.c;
        map.put("SHA-256", l1Var);
        Map map2 = a;
        l1 l1Var2 = cx6.e;
        map2.put("SHA-512", l1Var2);
        Map map3 = a;
        l1 l1Var3 = cx6.m;
        map3.put("SHAKE128", l1Var3);
        Map map4 = a;
        l1 l1Var4 = cx6.n;
        map4.put("SHAKE256", l1Var4);
        b.put(l1Var, "SHA-256");
        b.put(l1Var2, "SHA-512");
        b.put(l1Var3, "SHAKE128");
        b.put(l1Var4, "SHAKE256");
    }

    public static sb2 a(l1 l1Var) {
        if (l1Var.s(cx6.c)) {
            return new ux8();
        }
        if (l1Var.s(cx6.e)) {
            return new xx8();
        }
        if (l1Var.s(cx6.m)) {
            return new yx8(128);
        }
        if (l1Var.s(cx6.n)) {
            return new yx8(256);
        }
        throw new IllegalArgumentException("unrecognized digest OID: " + l1Var);
    }

    public static String b(l1 l1Var) {
        String str = (String) b.get(l1Var);
        if (str != null) {
            return str;
        }
        throw new IllegalArgumentException("unrecognized digest oid: " + l1Var);
    }

    public static l1 c(String str) {
        l1 l1Var = (l1) a.get(str);
        if (l1Var != null) {
            return l1Var;
        }
        throw new IllegalArgumentException("unrecognized digest name: " + str);
    }
}
