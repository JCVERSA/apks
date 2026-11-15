package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class ig extends lg {
    public ig() {
        super(EvaluableType.DICT);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) throws JSONException {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objC = ArrayFunctionsKt.c(f(), list, m());
        JSONObject jSONObject = objC instanceof JSONObject ? (JSONObject) objC : null;
        if (jSONObject != null) {
            return jSONObject;
        }
        ArrayFunctionsKt.j(f(), list, g(), objC, m());
        return zfb.a;
    }
}
