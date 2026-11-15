package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class qh4 extends Function {
    public static final qh4 c = new qh4();
    public static final String d = "getStoredNumberValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        f84 f84Var = new f84(EvaluableType.STRING, false, 2, null);
        EvaluableType evaluableType = EvaluableType.NUMBER;
        e = y71.n(f84Var, new f84(evaluableType, false, 2, null));
        f = evaluableType;
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
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Number");
        Number number = (Number) obj2;
        Number number2 = null;
        if (!(pd3Var.b().get(str) instanceof Long)) {
            Object obj3 = pd3Var.b().get(str);
            if (obj3 instanceof Number) {
                number2 = (Number) obj3;
            }
        }
        return number2 == null ? number : number2;
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
