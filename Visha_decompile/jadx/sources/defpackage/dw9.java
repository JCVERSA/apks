package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;

public abstract class dw9 {
    public static final o54 a;
    public static final o54 b;

    static {
        o54 o54Var = new o54("java.lang");
        a = o54Var;
        o54 o54VarC = o54Var.c(by6.g("annotation"));
        y45.i(o54VarC, "JAVA_LANG_PACKAGE.child(…identifier(\"annotation\"))");
        b = o54VarC;
    }

    public static final xw0 k(String str) {
        return new xw0(cw9.a.b(), by6.g(str));
    }

    public static final xw0 l(String str) {
        return new xw0(cw9.a.f(), by6.g(str));
    }

    public static final xw0 m(String str) {
        return new xw0(cw9.a.c(), by6.g(str));
    }

    public static final xw0 n(String str) {
        return new xw0(cw9.a.d(), by6.g(str));
    }

    public static final xw0 o(String str) {
        return new xw0(cw9.a.e(), by6.g(str));
    }

    public static final Map p(Map map) {
        Set<Map.Entry> setEntrySet = map.entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            Pair pairA = abb.a(entry.getValue(), entry.getKey());
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }

    public static final xw0 q(by6 by6Var) {
        cw9 cw9Var = cw9.a;
        return new xw0(cw9Var.a().h(), by6.g(by6Var.e() + cw9Var.a().j().e()));
    }

    public static final xw0 r(String str) {
        return new xw0(cw9.a.g(), by6.g(str));
    }

    public static final xw0 s(String str) {
        return new xw0(cw9.a.h(), by6.g(str));
    }

    public static final xw0 t(xw0 xw0Var) {
        return new xw0(cw9.a.f(), by6.g('U' + xw0Var.j().e()));
    }
}
