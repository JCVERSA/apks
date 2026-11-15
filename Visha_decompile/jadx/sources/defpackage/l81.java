package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public final class l81 extends Function {
    public static final l81 c = new l81();
    public static final String d = "argb";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g;

    static {
        EvaluableType evaluableType = EvaluableType.NUMBER;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null), new f84(evaluableType, false, 2, null));
        f = EvaluableType.COLOR;
        g = true;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        try {
            Object obj = list.get(0);
            y45.h(obj, "null cannot be cast to non-null type kotlin.Double");
            int iB = s81.b(((Double) obj).doubleValue());
            Object obj2 = list.get(1);
            y45.h(obj2, "null cannot be cast to non-null type kotlin.Double");
            int iB2 = s81.b(((Double) obj2).doubleValue());
            Object obj3 = list.get(2);
            y45.h(obj3, "null cannot be cast to non-null type kotlin.Double");
            int iB3 = s81.b(((Double) obj3).doubleValue());
            Object obj4 = list.get(3);
            y45.h(obj4, "null cannot be cast to non-null type kotlin.Double");
            return k81.c(k81.b.a(iB, iB2, iB3, s81.b(((Double) obj4).doubleValue())));
        } catch (IllegalArgumentException unused) {
            EvaluableExceptionKt.g(f(), list, "Value out of range 0..1.", null, 8, null);
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
