package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import org.json.JSONException;

public abstract class rh extends lg {
    public rh() {
        super(EvaluableType.URL);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) throws JSONException {
        String strG;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objC = ArrayFunctionsKt.c(f(), list, m());
        String str = objC instanceof String ? (String) objC : null;
        if (str != null && (strG = ArrayFunctionsKt.g(str)) != null) {
            return vib.a(strG);
        }
        ArrayFunctionsKt.j(f(), list, g(), objC, m());
        return zfb.a;
    }
}
