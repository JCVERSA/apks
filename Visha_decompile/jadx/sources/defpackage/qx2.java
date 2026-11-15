package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.Iterator;
import java.util.List;

public final class qx2 extends Function {
    public static final qx2 c = new qx2();
    public static final String d = "sum";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.NUMBER;
        e = x71.e(new f84(evaluableType, true));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Double dValueOf = Double.valueOf(0.0d);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object objB = Evaluator.b.b(gpa.c.a.f.b.a, Double.valueOf(dValueOf.doubleValue()), it.next());
            y45.h(objB, "null cannot be cast to non-null type kotlin.Double");
            dValueOf = (Double) objB;
            dValueOf.doubleValue();
        }
        return dValueOf;
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
