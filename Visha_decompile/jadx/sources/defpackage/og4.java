package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import org.json.JSONArray;

public final class og4 extends Function {
    public static final og4 c = new og4();
    public static final String d = "getOptArrayFromDict";
    public static final List e = y71.n(new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
    public static final EvaluableType f = EvaluableType.ARRAY;
    public static final boolean g = false;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        JSONArray jSONArray = new JSONArray();
        Object objB = DictFunctionsKt.b(list, jSONArray, true);
        JSONArray jSONArray2 = objB instanceof JSONArray ? (JSONArray) objB : null;
        return jSONArray2 == null ? jSONArray : jSONArray2;
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
