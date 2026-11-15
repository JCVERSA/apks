package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class gx2 extends Function {
    public static final gx2 c = new gx2();
    public static final String d = "max";
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
        if (list.isEmpty()) {
            EvaluableExceptionKt.g(f(), list, "Function requires non empty argument list.", null, 8, null);
            throw new KotlinNothingValueException();
        }
        Object objO0 = i81.o0(list);
        for (Object obj : list) {
            y45.h(objO0, "null cannot be cast to non-null type kotlin.Double");
            double dDoubleValue = ((Double) objO0).doubleValue();
            y45.h(obj, "null cannot be cast to non-null type kotlin.Double");
            objO0 = Double.valueOf(Math.max(dDoubleValue, ((Double) obj).doubleValue()));
        }
        return objO0;
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
