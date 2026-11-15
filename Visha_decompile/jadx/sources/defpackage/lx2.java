package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Evaluator;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class lx2 extends Function {
    public static final lx2 c = new lx2();
    public static final String d = "mul";
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
        int i = 0;
        for (Object objA : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            double dDoubleValue = dValueOf.doubleValue();
            if (i != 0) {
                objA = Evaluator.b.a(gpa.c.a.InterfaceC0358c.C0360c.a, Double.valueOf(dDoubleValue), objA);
            }
            y45.h(objA, "null cannot be cast to non-null type kotlin.Double");
            dValueOf = (Double) objA;
            dValueOf.doubleValue();
            i = i2;
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
