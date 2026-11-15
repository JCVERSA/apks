package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;

public class e18 implements AlgorithmParameterSpec {
    public static final e18 b;
    public static final e18 c;
    public static final e18 d;
    public static final e18 e;
    public static final e18 f;
    public static final e18 g;
    public static final e18 h;
    public static final e18 i;
    public static final e18 j;
    public static final e18 k;
    public static final e18 l;
    public static final e18 m;
    public static Map n;
    public final String a;

    static {
        e18 e18Var = new e18(f18.d);
        b = e18Var;
        e18 e18Var2 = new e18(f18.e);
        c = e18Var2;
        e18 e18Var3 = new e18(f18.f);
        d = e18Var3;
        e18 e18Var4 = new e18(f18.g);
        e = e18Var4;
        e18 e18Var5 = new e18(f18.h);
        f = e18Var5;
        e18 e18Var6 = new e18(f18.i);
        g = e18Var6;
        e18 e18Var7 = new e18(f18.j);
        h = e18Var7;
        e18 e18Var8 = new e18(f18.k);
        i = e18Var8;
        e18 e18Var9 = new e18(f18.l);
        j = e18Var9;
        e18 e18Var10 = new e18(f18.m);
        k = e18Var10;
        e18 e18Var11 = new e18(f18.n);
        l = e18Var11;
        e18 e18Var12 = new e18(f18.o);
        m = e18Var12;
        HashMap map = new HashMap();
        n = map;
        map.put("picnicl1fs", e18Var);
        n.put("picnicl1ur", e18Var2);
        n.put("picnicl3fs", e18Var3);
        n.put("picnicl3ur", e18Var4);
        n.put("picnicl5fs", e18Var5);
        n.put("picnicl5ur", e18Var6);
        n.put("picnic3l1", e18Var7);
        n.put("picnic3l3", e18Var8);
        n.put("picnic3l5", e18Var9);
        n.put("picnicl1full", e18Var10);
        n.put("picnicl3full", e18Var11);
        n.put("picnicl5full", e18Var12);
    }

    public e18(f18 f18Var) {
        this.a = f18Var.a();
    }

    public static e18 a(String str) {
        return (e18) n.get(u0a.f(str));
    }
}
