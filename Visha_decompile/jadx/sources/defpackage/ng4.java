package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import org.json.JSONArray;

public final class ng4 extends ih {
    public static final ng4 f = new ng4();
    public static final String g = "getOptArrayFromArray";
    public static final List h = y71.n(new f84(EvaluableType.ARRAY, false, 2, null), new f84(EvaluableType.INTEGER, false, 2, null));

    public ng4() {
        super(EvaluableType.ARRAY);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objE = ArrayFunctionsKt.e(f(), list);
        JSONArray jSONArray = objE instanceof JSONArray ? (JSONArray) objE : null;
        return jSONArray == null ? new JSONArray() : jSONArray;
    }

    @Override
    public List d() {
        return h;
    }

    @Override
    public String f() {
        return g;
    }
}
