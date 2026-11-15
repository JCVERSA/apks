package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import org.json.JSONObject;

public final class wg4 extends Function {
    public static final wg4 c = new wg4();
    public static final String d = "getOptDictFromDict";
    public static final List e;
    public static final EvaluableType f;
    public static final boolean g = false;

    static {
        EvaluableType evaluableType = EvaluableType.DICT;
        e = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.STRING, true));
        f = evaluableType;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        JSONObject jSONObject = new JSONObject();
        Object objB = DictFunctionsKt.b(list, jSONObject, true);
        JSONObject jSONObject2 = objB instanceof JSONObject ? (JSONObject) objB : null;
        return jSONObject2 == null ? jSONObject : jSONObject2;
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
