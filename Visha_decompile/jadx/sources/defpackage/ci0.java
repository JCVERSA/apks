package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class ci0 extends Function {
    public static final ci0 c = new ci0();
    public static final String d = "toInteger";
    public static final List e = x71.e(new f84(EvaluableType.BOOLEAN, false, 2, null));
    public static final EvaluableType f = EvaluableType.INTEGER;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Boolean");
        return Long.valueOf(((Boolean) objO0).booleanValue() ? 1L : 0L);
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
