package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import org.json.JSONException;

public abstract class eg extends lg {
    public eg() {
        super(EvaluableType.BOOLEAN);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) throws JSONException {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objC = ArrayFunctionsKt.c(f(), list, m());
        Boolean bool = objC instanceof Boolean ? (Boolean) objC : null;
        if (bool != null) {
            return bool;
        }
        ArrayFunctionsKt.j(f(), list, g(), objC, m());
        return zfb.a;
    }
}
