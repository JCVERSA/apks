package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class v64 implements AlgorithmParameterSpec {
    public static final v64 b;
    public static final v64 c;
    public static final v64 d;
    public static final v64 e;
    public static final v64 f;
    public static final v64 g;
    public static Map h;
    public final String a;

    static {
        v64 v64Var = new v64(w64.k);
        b = v64Var;
        v64 v64Var2 = new v64(w64.l);
        c = v64Var2;
        v64 v64Var3 = new v64(w64.m);
        d = v64Var3;
        v64 v64Var4 = new v64(w64.n);
        e = v64Var4;
        v64 v64Var5 = new v64(w64.o);
        f = v64Var5;
        v64 v64Var6 = new v64(w64.p);
        g = v64Var6;
        HashMap map = new HashMap();
        h = map;
        map.put("frodokem19888r3", v64Var);
        h.put("frodokem19888shaker3", v64Var2);
        h.put("frodokem31296r3", v64Var3);
        h.put("frodokem31296shaker3", v64Var4);
        h.put("frodokem43088r3", v64Var5);
        h.put("frodokem43088shaker3", v64Var6);
        h.put("frodokem640aes", v64Var);
        h.put("frodokem640shake", v64Var2);
        h.put("frodokem976aes", v64Var3);
        h.put("frodokem976shake", v64Var4);
        h.put("frodokem1344aes", v64Var5);
        h.put("frodokem1344shake", v64Var6);
    }

    public v64(w64 w64Var) {
        this.a = w64Var.a();
    }

    public static v64 a(String str) {
        return (v64) h.get(u0a.f(str));
    }
}
