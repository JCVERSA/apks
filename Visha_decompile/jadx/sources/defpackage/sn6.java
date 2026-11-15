package defpackage;

import java.util.HashMap;
import java.util.Map;

public abstract class sn6 {
    public static Map a = new HashMap();
    public static Map b = new HashMap();

    static {
        a.put(yu7.s2, "MD2");
        a.put(yu7.t2, "MD4");
        a.put(yu7.u2, "MD5");
        Map map = a;
        l1 l1Var = n47.i;
        map.put(l1Var, "SHA-1");
        Map map2 = a;
        l1 l1Var2 = cx6.f;
        map2.put(l1Var2, "SHA-224");
        Map map3 = a;
        l1 l1Var3 = cx6.c;
        map3.put(l1Var3, "SHA-256");
        Map map4 = a;
        l1 l1Var4 = cx6.d;
        map4.put(l1Var4, "SHA-384");
        Map map5 = a;
        l1 l1Var5 = cx6.e;
        map5.put(l1Var5, "SHA-512");
        a.put(cx6.g, "SHA-512(224)");
        a.put(cx6.h, "SHA-512(256)");
        a.put(nea.c, "RIPEMD-128");
        a.put(nea.b, "RIPEMD-160");
        a.put(nea.d, "RIPEMD-128");
        a.put(yv4.d, "RIPEMD-128");
        a.put(yv4.c, "RIPEMD-160");
        a.put(wl1.b, "GOST3411");
        a.put(ga4.g, "Tiger");
        a.put(yv4.e, "Whirlpool");
        Map map6 = a;
        l1 l1Var6 = cx6.i;
        map6.put(l1Var6, "SHA3-224");
        Map map7 = a;
        l1 l1Var7 = cx6.j;
        map7.put(l1Var7, "SHA3-256");
        Map map8 = a;
        l1 l1Var8 = cx6.k;
        map8.put(l1Var8, "SHA3-384");
        Map map9 = a;
        l1 l1Var9 = cx6.l;
        map9.put(l1Var9, "SHA3-512");
        a.put(cx6.m, "SHAKE128");
        a.put(cx6.n, "SHAKE256");
        a.put(ca4.d0, "SM3");
        Map map10 = a;
        l1 l1Var10 = vp6.N;
        map10.put(l1Var10, "BLAKE3-256");
        b.put("SHA-1", new oa(l1Var, up1.c));
        b.put("SHA-224", new oa(l1Var2));
        b.put("SHA224", new oa(l1Var2));
        b.put("SHA-256", new oa(l1Var3));
        b.put("SHA256", new oa(l1Var3));
        b.put("SHA-384", new oa(l1Var4));
        b.put("SHA384", new oa(l1Var4));
        b.put("SHA-512", new oa(l1Var5));
        b.put("SHA512", new oa(l1Var5));
        b.put("SHA3-224", new oa(l1Var6));
        b.put("SHA3-256", new oa(l1Var7));
        b.put("SHA3-384", new oa(l1Var8));
        b.put("SHA3-512", new oa(l1Var9));
        b.put("BLAKE3-256", new oa(l1Var10));
    }

    public static oa a(String str) {
        if (b.containsKey(str)) {
            return (oa) b.get(str);
        }
        throw new IllegalArgumentException("unknown digest: " + str);
    }

    public static String b(l1 l1Var) {
        String str = (String) a.get(l1Var);
        return str != null ? str : l1Var.B();
    }
}
