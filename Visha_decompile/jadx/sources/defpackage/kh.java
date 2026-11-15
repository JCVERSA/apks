package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;

public abstract class kh extends ih {
    public kh() {
        super(EvaluableType.NUMBER);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objE = ArrayFunctionsKt.e(f(), list);
        Number number = objE instanceof Number ? (Number) objE : null;
        return number != null ? Double.valueOf(number.doubleValue()) : list.get(2);
    }
}
