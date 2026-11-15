package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.Iterator;
import java.util.List;

public final class o25 extends Function {
    public static final o25 c = new o25();
    public static final String d = "sum";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.INTEGER;
        e = x71.e(new f84(evaluableType, true));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Long l = 0L;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object objB = Evaluator.b.b(gpa.c.a.f.b.a, Long.valueOf(l.longValue()), it.next());
            y45.h(objB, "null cannot be cast to non-null type kotlin.Long");
            l = (Long) objB;
            l.longValue();
        }
        return l;
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
