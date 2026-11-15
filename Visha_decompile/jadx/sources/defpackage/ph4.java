package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class ph4 extends Function {
    public static final ph4 c = new ph4();
    public static final String d = "getStoredIntegerValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        f84 f84Var = new f84(EvaluableType.STRING, false, 2, null);
        EvaluableType evaluableType = EvaluableType.INTEGER;
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
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
        Long l = (Long) obj2;
        l.longValue();
        Object obj3 = pd3Var.b().get((String) obj);
        Long l2 = obj3 instanceof Long ? (Long) obj3 : null;
        return l2 == null ? l : l2;
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
