package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import org.json.JSONArray;

public final class qh extends Function {
    public static final qh c = new qh();
    public static final String d = "toString";
    public static final List e = x71.e(new f84(EvaluableType.ARRAY, false, 2, null));
    public static final EvaluableType f = EvaluableType.STRING;
    public static final boolean g = false;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objO0 = i81.o0(list);
        y45.h(objO0, "null cannot be cast to non-null type org.json.JSONArray");
        String string = ((JSONArray) objO0).toString();
        y45.i(string, "args.first() as JSONArray).toString()");
        return string;
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
