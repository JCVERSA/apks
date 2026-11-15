package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class p25 extends Function {
    public static final p25 c = new p25();
    public static final String d = "toBoolean";
    public static final List e = x71.e(new f84(EvaluableType.INTEGER, false, 2, null));
    public static final EvaluableType f = EvaluableType.BOOLEAN;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        boolean z;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) objO0).longValue();
        if (jLongValue == 0) {
            z = false;
        } else {
            if (jLongValue != 1) {
                EvaluableExceptionKt.g(f(), list, "Unable to convert value to Boolean.", null, 8, null);
                throw new KotlinNothingValueException();
            }
            z = true;
        }
        return Boolean.valueOf(z);
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
