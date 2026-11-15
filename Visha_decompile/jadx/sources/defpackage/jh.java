package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;

public abstract class jh extends ih {
    public jh() {
        super(EvaluableType.INTEGER);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objE = ArrayFunctionsKt.e(f(), list);
        if (objE instanceof Integer) {
            return Long.valueOf(((Number) objE).intValue());
        }
        return objE instanceof Long ? objE : list.get(2);
    }
}
