package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.types.DateTime;
import java.util.List;
import java.util.TimeZone;

public final class d37 extends Function {
    public static final d37 c = new d37();
    public static final String d = "nowLocal";
    public static final List e = y71.k();
    public static final EvaluableType f = EvaluableType.DATETIME;
    public static final boolean g = false;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        long jCurrentTimeMillis = System.currentTimeMillis();
        TimeZone timeZone = TimeZone.getDefault();
        y45.i(timeZone, "getDefault()");
        return new DateTime(jCurrentTimeMillis, timeZone);
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
