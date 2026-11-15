package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import org.json.JSONObject;

public final class ab2 extends Function {
    public static final ab2 c = new ab2();
    public static final String d = "isEmpty";
    public static final List e = x71.e(new f84(EvaluableType.DICT, false, 2, null));
    public static final EvaluableType f = EvaluableType.BOOLEAN;
    public static final boolean g = true;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type org.json.JSONObject");
        return Boolean.valueOf(((JSONObject) obj).length() == 0);
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
