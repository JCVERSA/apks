package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.a;

public final class qo3 {
    public static final qo3 a;
    public static final Map b;
    public static final Map c;

    static {
        qo3 qo3Var = new qo3();
        a = qo3Var;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        b = linkedHashMap;
        cw9 cw9Var = cw9.a;
        qo3Var.c(cw9Var.l(), qo3Var.a("java.util.ArrayList", "java.util.LinkedList"));
        qo3Var.c(cw9Var.n(), qo3Var.a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        qo3Var.c(cw9Var.m(), qo3Var.a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        xw0 xw0VarM = xw0.m(new o54("java.util.function.Function"));
        y45.i(xw0VarM, "topLevel(FqName(\"java.util.function.Function\"))");
        qo3Var.c(xw0VarM, qo3Var.a("java.util.function.UnaryOperator"));
        xw0 xw0VarM2 = xw0.m(new o54("java.util.function.BiFunction"));
        y45.i(xw0VarM2, "topLevel(FqName(\"java.util.function.BiFunction\"))");
        qo3Var.c(xw0VarM2, qo3Var.a("java.util.function.BinaryOperator"));
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(abb.a(((xw0) entry.getKey()).b(), ((xw0) entry.getValue()).b()));
        }
        c = a.y(arrayList);
    }

    public final List a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(xw0.m(new o54(str)));
        }
        return arrayList;
    }

    public final o54 b(o54 o54Var) {
        y45.j(o54Var, "classFqName");
        return (o54) c.get(o54Var);
    }

    public final void c(xw0 xw0Var, List list) {
        Map map = b;
        for (Object obj : list) {
            map.put(obj, xw0Var);
        }
    }
}
