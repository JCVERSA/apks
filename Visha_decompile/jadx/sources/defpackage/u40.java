package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class u40 implements AlgorithmParameterSpec {
    public static final u40 b;
    public static final u40 c;
    public static final u40 d;
    public static Map e;
    public final String a;

    static {
        u40 u40Var = new u40(v40.k);
        b = u40Var;
        u40 u40Var2 = new u40(v40.l);
        c = u40Var2;
        u40 u40Var3 = new u40(v40.m);
        d = u40Var3;
        HashMap map = new HashMap();
        e = map;
        map.put("bike128", u40Var);
        e.put("bike192", u40Var2);
        e.put("bike256", u40Var3);
    }

    public u40(v40 v40Var) {
        this.a = v40Var.a();
    }

    public static u40 a(String str) {
        return (u40) e.get(u0a.f(str));
    }
}
