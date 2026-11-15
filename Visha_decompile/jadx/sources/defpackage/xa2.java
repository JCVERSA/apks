package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import org.json.JSONObject;

public final class xa2 extends Function {
    public static final xa2 c = new xa2();
    public static final String d = "containsKey";
    public static final List e = y71.n(new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, false, 2, null));
    public static final EvaluableType f = EvaluableType.BOOLEAN;
    public static final boolean g = false;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type org.json.JSONObject");
        Object obj2 = list.get(1);
        y45.h(obj2, "null cannot be cast to non-null type kotlin.String");
        return Boolean.valueOf(((JSONObject) obj).has((String) obj2));
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
