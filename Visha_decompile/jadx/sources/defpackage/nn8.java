package defpackage;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.pqc.crypto.rainbow.b;

public class nn8 implements AlgorithmParameterSpec {
    public static final nn8 b;
    public static final nn8 c;
    public static final nn8 d;
    public static final nn8 e;
    public static final nn8 f;
    public static final nn8 g;
    public static Map h;
    public final String a;

    static {
        nn8 nn8Var = new nn8(b.k);
        b = nn8Var;
        nn8 nn8Var2 = new nn8(b.l);
        c = nn8Var2;
        nn8 nn8Var3 = new nn8(b.m);
        d = nn8Var3;
        nn8 nn8Var4 = new nn8(b.n);
        e = nn8Var4;
        nn8 nn8Var5 = new nn8(b.o);
        f = nn8Var5;
        nn8 nn8Var6 = new nn8(b.p);
        g = nn8Var6;
        HashMap map = new HashMap();
        h = map;
        map.put("rainbow-iii-classic", nn8Var);
        h.put("rainbow-iii-circumzenithal", nn8Var2);
        h.put("rainbow-iii-compressed", nn8Var3);
        h.put("rainbow-v-classic", nn8Var4);
        h.put("rainbow-v-circumzenithal", nn8Var5);
        h.put("rainbow-v-compressed", nn8Var6);
    }

    public nn8(b bVar) {
        this.a = u0a.j(bVar.f());
    }

    public static nn8 a(String str) {
        return (nn8) h.get(u0a.f(str));
    }
}
