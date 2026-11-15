package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class y37 extends Function {
    public static final y37 c = new y37();
    public static final String d = "toInteger";
    public static final List e = x71.e(new f84(EvaluableType.NUMBER, false, 2, null));
    public static final EvaluableType f = EvaluableType.INTEGER;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Double");
        double dDoubleValue = ((Double) objO0).doubleValue();
        if (dDoubleValue >= -9.223372036854776E18d && dDoubleValue <= 9.223372036854776E18d) {
            return Long.valueOf((long) dDoubleValue);
        }
        EvaluableExceptionKt.g(f(), list, "Unable to convert value to Integer.", null, 8, null);
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
