package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class qh5 implements AlgorithmParameterSpec {
    public static final qh5 b;
    public static final qh5 c;
    public static final qh5 d;
    public static Map e;
    public final String a;

    static {
        qh5 qh5Var = new qh5(rh5.f);
        b = qh5Var;
        qh5 qh5Var2 = new qh5(rh5.g);
        c = qh5Var2;
        qh5 qh5Var3 = new qh5(rh5.h);
        d = qh5Var3;
        HashMap map = new HashMap();
        e = map;
        map.put("kyber512", qh5Var);
        e.put("kyber768", qh5Var2);
        e.put("kyber1024", qh5Var3);
    }

    public qh5(rh5 rh5Var) {
        this.a = u0a.j(rh5Var.b());
    }

    public static qh5 a(String str) {
        return (qh5) e.get(u0a.f(str));
    }
}
