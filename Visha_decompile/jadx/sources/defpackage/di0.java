package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public final class di0 extends Function {
    public static final di0 c = new di0();
    public static final String d = "toString";
    public static final List e = x71.e(new f84(EvaluableType.BOOLEAN, false, 2, null));
    public static final EvaluableType f = EvaluableType.STRING;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) objO0).booleanValue() ? BooleanUtils.TRUE : BooleanUtils.FALSE;
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
