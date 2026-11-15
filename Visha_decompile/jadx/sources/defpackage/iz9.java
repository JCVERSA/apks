package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class iz9 extends Function {
    public static final iz9 c = new iz9();
    public static final String d = "contains";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.STRING;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null));
        f = EvaluableType.BOOLEAN;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.String");
        return Boolean.valueOf(j1a.V((String) obj, (String) obj2, false));
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
