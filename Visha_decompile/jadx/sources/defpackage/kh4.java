package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class kh4 extends Function {
    public static final kh4 c = new kh4();
    public static final String d = "getStoredBooleanValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        f84 f84Var = new f84(EvaluableType.STRING, false, 2, null);
        EvaluableType evaluableType = EvaluableType.BOOLEAN;
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
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.Boolean");
        Boolean bool = (Boolean) obj2;
        bool.booleanValue();
        Object obj3 = pd3Var.b().get((String) obj);
        Boolean bool2 = obj3 instanceof Boolean ? (Boolean) obj3 : null;
        return bool2 == null ? bool : bool2;
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
