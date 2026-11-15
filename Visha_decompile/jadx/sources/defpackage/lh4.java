package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class lh4 extends Function {
    public static final lh4 c = new lh4();
    public static final String d = "getStoredColorValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        f84 f84Var = new f84(EvaluableType.STRING, false, 2, null);
        EvaluableType evaluableType = EvaluableType.COLOR;
        e = y71.n(f84Var, new f84(evaluableType, false, 2, null));
        f = evaluableType;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Color");
        int iK = ((k81) obj2).k();
        Object obj3 = pd3Var.b().get((String) obj);
        k81 k81Var = obj3 instanceof k81 ? (k81) obj3 : null;
        return k81Var == null ? k81.c(iK) : k81Var;
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
