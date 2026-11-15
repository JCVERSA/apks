package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.types.DateTime;
import java.util.Calendar;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class qe9 extends Function {
    public static final qe9 c = new qe9();
    public static final String d = "setHours";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.DATETIME;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.INTEGER, false, 2, null));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type com.yandex.div.evaluable.types.DateTime");
        DateTime dateTime = (DateTime) obj;
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) obj2).longValue();
        if (jLongValue <= 23 && jLongValue >= 0) {
            Calendar calendarA = ht1.a(dateTime);
            calendarA.setTimeInMillis(dateTime.e());
            calendarA.set(11, (int) jLongValue);
            return new DateTime(calendarA.getTimeInMillis(), dateTime.f());
        }
        EvaluableExceptionKt.g(f(), list, "Expecting hours in [0..23], instead got " + jLongValue + '.', null, 8, null);
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
