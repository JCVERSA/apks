package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class yo0 implements AlgorithmParameterSpec {
    public static final yo0 b;
    public static final yo0 c;
    public static final yo0 d;
    public static final yo0 e;
    public static final yo0 f;
    public static final yo0 g;
    public static final yo0 h;
    public static final yo0 i;
    public static final yo0 j;
    public static final yo0 k;
    public static Map l;
    public final String a;

    static {
        yo0 yo0Var = new yo0(zo0.n);
        b = yo0Var;
        yo0 yo0Var2 = new yo0(zo0.o);
        c = yo0Var2;
        yo0 yo0Var3 = new yo0(zo0.p);
        d = yo0Var3;
        yo0 yo0Var4 = new yo0(zo0.q);
        e = yo0Var4;
        yo0 yo0Var5 = new yo0(zo0.r);
        f = yo0Var5;
        yo0 yo0Var6 = new yo0(zo0.s);
        g = yo0Var6;
        yo0 yo0Var7 = new yo0(zo0.t);
        h = yo0Var7;
        yo0 yo0Var8 = new yo0(zo0.u);
        i = yo0Var8;
        yo0 yo0Var9 = new yo0(zo0.v);
        j = yo0Var9;
        yo0 yo0Var10 = new yo0(zo0.w);
        k = yo0Var10;
        HashMap map = new HashMap();
        l = map;
        map.put("mceliece348864", yo0Var);
        l.put("mceliece348864f", yo0Var2);
        l.put("mceliece460896", yo0Var3);
        l.put("mceliece460896f", yo0Var4);
        l.put("mceliece6688128", yo0Var5);
        l.put("mceliece6688128f", yo0Var6);
        l.put("mceliece6960119", yo0Var7);
        l.put("mceliece6960119f", yo0Var8);
        l.put("mceliece8192128", yo0Var9);
        l.put("mceliece8192128f", yo0Var10);
    }

    public yo0(zo0 zo0Var) {
        this.a = zo0Var.b();
    }

    public static yo0 a(String str) {
        return (yo0) l.get(u0a.f(str));
    }
}
