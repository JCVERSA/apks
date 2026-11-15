package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class to3 implements AlgorithmParameterSpec {
    public static final to3 b;
    public static final to3 c;
    public static Map d;
    public final String a;

    static {
        to3 to3Var = new to3(uo3.e);
        b = to3Var;
        to3 to3Var2 = new to3(uo3.f);
        c = to3Var2;
        HashMap map = new HashMap();
        d = map;
        map.put("falcon-512", to3Var);
        d.put("falcon-1024", to3Var2);
    }

    public to3(uo3 uo3Var) {
        this.a = u0a.j(uo3Var.b());
    }

    public static to3 a(String str) {
        return (to3) d.get(u0a.f(str));
    }
}
