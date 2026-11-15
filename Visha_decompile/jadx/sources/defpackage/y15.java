package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class y15 extends Function {
    public static final y15 c = new y15();
    public static final String d = "abs";
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
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) objO0).longValue();
        if (jLongValue != Long.MIN_VALUE) {
            return Long.valueOf(Math.abs(jLongValue));
        }
        EvaluableExceptionKt.g(f(), list, "Integer overflow.", null, 8, null);
        throw new KotlinNothingValueException();
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
