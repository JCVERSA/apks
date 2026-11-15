package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class ux6 implements AlgorithmParameterSpec {
    public static final ux6 b;
    public static final ux6 c;
    public static final ux6 d;
    public static final ux6 e;
    public static final ux6 f;
    public static final ux6 g;
    public static Map h;
    public final String a;

    static {
        ux6 ux6Var = new ux6(vx6.d);
        b = ux6Var;
        ux6 ux6Var2 = new ux6(vx6.e);
        c = ux6Var2;
        ux6 ux6Var3 = new ux6(vx6.f);
        d = ux6Var3;
        ux6 ux6Var4 = new ux6(vx6.g);
        e = ux6Var4;
        ux6 ux6Var5 = new ux6(vx6.h);
        f = ux6Var5;
        ux6 ux6Var6 = new ux6(vx6.i);
        g = ux6Var6;
        HashMap map = new HashMap();
        h = map;
        map.put("ntruhps2048509", ux6Var);
        h.put("ntruhps2048677", ux6Var2);
        h.put("ntruhps4096821", ux6Var3);
        h.put("ntruhps40961229", ux6Var4);
        h.put("ntruhrss701", ux6Var5);
        h.put("ntruhrss1373", ux6Var6);
    }

    public ux6(vx6 vx6Var) {
        this.a = vx6Var.a();
    }

    public static ux6 a(String str) {
        return (ux6) h.get(u0a.f(str));
    }
}
