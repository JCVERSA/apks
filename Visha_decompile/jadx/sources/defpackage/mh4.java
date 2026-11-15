package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class mh4 extends Function {
    public static final mh4 c = new mh4();
    public static final String d = "getStoredColorValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        EvaluableType evaluableType = EvaluableType.STRING;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null));
        f = EvaluableType.COLOR;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        k81.a aVar2 = k81.b;
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.String");
        int iB = aVar2.b((String) obj2);
        Object obj3 = pd3Var.b().get((String) obj);
        k81 k81Var = obj3 instanceof k81 ? (k81) obj3 : null;
        return k81Var == null ? k81.c(iB) : k81Var;
    }

    @Override
    public List d() {
        return e;
    }

    @Override
    public String f() {
        return d;
    }

    @Override
    public EvaluableType g() {
        return f;
    }

    @Override
    public boolean i() {
        return g;
    }
}
