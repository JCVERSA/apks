package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class px6 implements AlgorithmParameterSpec {
    public static final px6 b;
    public static final px6 c;
    public static final px6 d;
    public static final px6 e;
    public static final px6 f;
    public static final px6 g;
    public static Map h;
    public final String a;

    static {
        px6 px6Var = new px6(qx6.o);
        b = px6Var;
        px6 px6Var2 = new px6(qx6.p);
        c = px6Var2;
        px6 px6Var3 = new px6(qx6.q);
        d = px6Var3;
        px6 px6Var4 = new px6(qx6.r);
        e = px6Var4;
        px6 px6Var5 = new px6(qx6.s);
        f = px6Var5;
        px6 px6Var6 = new px6(qx6.t);
        g = px6Var6;
        HashMap map = new HashMap();
        h = map;
        map.put("ntrulpr653", px6Var);
        h.put("ntrulpr761", px6Var2);
        h.put("ntrulpr857", px6Var3);
        h.put("ntrulpr953", px6Var4);
        h.put("ntrulpr1013", px6Var5);
        h.put("ntrulpr1277", px6Var6);
    }

    public px6(qx6 qx6Var) {
        this.a = qx6Var.a();
    }

    public static px6 a(String str) {
        return (px6) h.get(u0a.f(str));
    }
}
