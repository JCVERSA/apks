package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.types.DateTime;
import java.util.List;
import java.util.TimeZone;

public final class vw7 extends Function {
    public static final vw7 c = new vw7();
    public static final String d = "parseUnixTimeAsLocal";
    public static final List e = x71.e(new f84(EvaluableType.INTEGER, false, 2, null));
    public static final EvaluableType f = EvaluableType.DATETIME;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) objO0).longValue() * 1000;
        TimeZone timeZone = TimeZone.getDefault();
        y45.i(timeZone, "getDefault()");
        return new DateTime(jLongValue, timeZone);
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
