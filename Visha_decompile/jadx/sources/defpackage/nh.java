package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;

public abstract class nh extends ih {
    public nh() {
        super(EvaluableType.URL);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objE = ArrayFunctionsKt.e(f(), list);
        String strG = ArrayFunctionsKt.g(objE instanceof String ? (String) objE : null);
        return strG != null ? vib.a(strG) : list.get(2);
    }
}
