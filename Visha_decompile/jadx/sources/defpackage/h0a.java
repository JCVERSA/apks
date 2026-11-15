package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class h0a extends Function {
    public static final h0a c = new h0a();
    public static final String d = "toNumber";
    public static final List e = x71.e(new f84(EvaluableType.STRING, false, 2, null));
    public static final EvaluableType f = EvaluableType.NUMBER;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.String");
        try {
            double d2 = Double.parseDouble((String) objO0);
            if (d2 != Double.POSITIVE_INFINITY && d2 != Double.NEGATIVE_INFINITY) {
                return Double.valueOf(d2);
            }
            EvaluableExceptionKt.g(f(), list, "Unable to convert value to Number.", null, 8, null);
            throw new KotlinNothingValueException();
        } catch (NumberFormatException e2) {
            EvaluableExceptionKt.f(f(), list, "Unable to convert value to Number.", e2);
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
