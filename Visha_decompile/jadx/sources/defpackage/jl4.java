package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class jl4 implements AlgorithmParameterSpec {
    public static final jl4 b;
    public static final jl4 c;
    public static final jl4 d;
    public static Map e;
    public final String a;

    static {
        jl4 jl4Var = new jl4(kl4.p);
        b = jl4Var;
        jl4 jl4Var2 = new jl4(kl4.q);
        c = jl4Var2;
        jl4 jl4Var3 = new jl4(kl4.r);
        d = jl4Var3;
        HashMap map = new HashMap();
        e = map;
        map.put("hqc128", jl4Var);
        e.put("hqc192", jl4Var2);
        e.put("hqc256", jl4Var3);
    }

    public jl4(kl4 kl4Var) {
        this.a = kl4Var.a();
    }

    public static jl4 a(String str) {
        return (jl4) e.get(u0a.f(str));
    }
}
