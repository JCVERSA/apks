package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class gy8 implements AlgorithmParameterSpec {
    public static final gy8 b;
    public static final gy8 c;
    public static final gy8 d;
    public static final gy8 e;
    public static final gy8 f;
    public static final gy8 g;
    public static Map h;
    public final String a;

    static {
        gy8 gy8Var = new gy8(hy8.k);
        b = gy8Var;
        gy8 gy8Var2 = new gy8(hy8.l);
        c = gy8Var2;
        gy8 gy8Var3 = new gy8(hy8.m);
        d = gy8Var3;
        gy8 gy8Var4 = new gy8(hy8.n);
        e = gy8Var4;
        gy8 gy8Var5 = new gy8(hy8.o);
        f = gy8Var5;
        gy8 gy8Var6 = new gy8(hy8.p);
        g = gy8Var6;
        HashMap map = new HashMap();
        h = map;
        map.put("sntrup653", gy8Var);
        h.put("sntrup761", gy8Var2);
        h.put("sntrup857", gy8Var3);
        h.put("sntrup953", gy8Var4);
        h.put("sntrup1013", gy8Var5);
        h.put("sntrup1277", gy8Var6);
    }

    public gy8(hy8 hy8Var) {
        this.a = hy8Var.a();
    }

    public static gy8 a(String str) {
        return (gy8) h.get(u0a.f(str));
    }
}
