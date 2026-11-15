package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class b18 extends Function {
    public static final b18 c = new b18();
    public static final String d = "pi";
    public static final List e = y71.k();
    public static final EvaluableType f = EvaluableType.NUMBER;
    public static final boolean g = true;

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

    @Override
    public Double c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        return Double.valueOf(3.141592653589793d);
    }
}
