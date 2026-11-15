package defpackage;

import com.yandex.div.evaluable.EvaluableException;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class bg4 extends Function {
    public static final bg4 c = new bg4();
    public static final String d = "getIntervalTotalDays";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.INTEGER;
        e = x71.e(new f84(evaluableType, false, 2, null));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) obj).longValue();
        if (jLongValue < 0) {
            throw new EvaluableException("Failed to evaluate [getIntervalTotalDays(-1)]. Expecting non-negative number of milliseconds.", null, 2, null);
        }
        long j = 60;
        return Long.valueOf((((jLongValue / ((long) 1000)) / j) / j) / ((long) 24));
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
