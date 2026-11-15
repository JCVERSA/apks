package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;

public final class ci4 extends Function {
    public static final ci4 c = new ci4();
    public static final String d = "getUrlValue";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        f84 f84Var = new f84(EvaluableType.STRING, false, 2, null);
        EvaluableType evaluableType = EvaluableType.URL;
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
        Object obj2 = pd3Var.c().get((String) obj);
        String strG = obj2 instanceof vib ? ((vib) obj2).g() : null;
        if (strG != null) {
            return vib.a(strG);
        }
        Object obj3 = list.get(1);
        y45.h(obj3, "null cannot be cast to non-null type com.yandex.div.evaluable.types.Url");
        return (vib) obj3;
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
