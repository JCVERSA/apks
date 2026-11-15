package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class g0a extends Function {
    public static final g0a c = new g0a();
    public static final String d = "toInteger";
    public static final List e = x71.e(new f84(EvaluableType.STRING, false, 2, null));
    public static final EvaluableType f = EvaluableType.INTEGER;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.String");
        try {
            return Long.valueOf(Long.parseLong((String) objO0));
        } catch (NumberFormatException e2) {
            EvaluableExceptionKt.f(f(), list, "Unable to convert value to Integer.", e2);
            throw new KotlinNothingValueException();
        }
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
