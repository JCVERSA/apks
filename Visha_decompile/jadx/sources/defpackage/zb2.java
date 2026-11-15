package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class zb2 implements AlgorithmParameterSpec {
    public static final zb2 b;
    public static final zb2 c;
    public static final zb2 d;
    public static Map e;
    public final String a;

    static {
        zb2 zb2Var = new zb2(ac2.d);
        b = zb2Var;
        zb2 zb2Var2 = new zb2(ac2.e);
        c = zb2Var2;
        zb2 zb2Var3 = new zb2(ac2.f);
        d = zb2Var3;
        HashMap map = new HashMap();
        e = map;
        map.put("dilithium2", zb2Var);
        e.put("dilithium3", zb2Var2);
        e.put("dilithium5", zb2Var3);
    }

    public zb2(ac2 ac2Var) {
        this.a = u0a.j(ac2Var.b());
    }

    public static zb2 a(String str) {
        return (zb2) e.get(u0a.f(str));
    }
}
