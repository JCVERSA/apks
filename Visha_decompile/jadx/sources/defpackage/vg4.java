package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import org.json.JSONObject;

public final class vg4 extends lg {
    public static final vg4 g = new vg4();
    public static final String h = "getOptDictFromArray";
    public static final List i = y71.n(new f84(EvaluableType.ARRAY, false, 2, null), new f84(EvaluableType.INTEGER, false, 2, null));

    public vg4() {
        super(EvaluableType.DICT);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objD = ArrayFunctionsKt.d(f(), list, false, 4, null);
        JSONObject jSONObject = objD instanceof JSONObject ? (JSONObject) objD : null;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    @Override
    public List d() {
        return i;
    }

    @Override
    public String f() {
        return h;
    }
}
