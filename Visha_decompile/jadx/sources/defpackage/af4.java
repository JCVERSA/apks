package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.types.DateTime;
import java.util.List;

public final class af4 extends Function {
    public static final af4 c = new af4();
    public static final String d = "getDayOfWeek";
    public static final List e = x71.e(new f84(EvaluableType.DATETIME, false, 2, null));
    public static final EvaluableType f = EvaluableType.INTEGER;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div.evaluable.types.DateTime");
        int i = ht1.a((DateTime) obj).get(7) - 1;
        return Long.valueOf(i == 0 ? 7L : i);
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
