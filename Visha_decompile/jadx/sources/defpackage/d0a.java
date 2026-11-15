package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class d0a extends Function {
    public static final d0a c = new d0a();
    public static final String d = "substring";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.STRING;
        f84 f84Var = new f84(evaluableType, false, 2, null);
        EvaluableType evaluableType2 = EvaluableType.INTEGER;
        e = y71.n(f84Var, new f84(evaluableType2, false, 2, null), new f84(evaluableType2, false, 2, null));
        f = evaluableType;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue = ((Long) obj2).longValue();
        Object obj3 = list.get(2);
        y45.h(obj3, "null cannot be cast to non-null type kotlin.Long");
        long jLongValue2 = ((Long) obj3).longValue();
        if (jLongValue < 0 || jLongValue2 > str.length()) {
            EvaluableExceptionKt.g(f(), list, "Indexes are out of bounds.", null, 8, null);
            throw new KotlinNothingValueException();
        }
        if (jLongValue > jLongValue2) {
            EvaluableExceptionKt.g(f(), list, "Indexes should be in ascending order.", null, 8, null);
            throw new KotlinNothingValueException();
        }
        String strSubstring = str.substring((int) jLongValue, (int) jLongValue2);
        y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
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
