package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class sv7 extends Function {
    public static final sv7 c = new sv7();
    public static final String d = "padStart";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.INTEGER;
        f84 f84Var = new f84(evaluableType, false, 2, null);
        f84 f84Var2 = new f84(evaluableType, false, 2, null);
        EvaluableType evaluableType2 = EvaluableType.STRING;
        e = y71.n(f84Var, f84Var2, new f84(evaluableType2, false, 2, null));
        f = evaluableType2;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.Long");
        String strValueOf = String.valueOf(((Long) obj).longValue());
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) obj2).longValue();
        Object obj3 = list.get(2);
        y45.h(obj3, "null cannot be cast to non-null type kotlin.String");
        return mz9.a(pd3Var, aVar, (int) (jLongValue - ((long) strValueOf.length())), (String) obj3) + strValueOf;
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
