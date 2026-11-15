package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import kotlin.Result;
import kotlin.c;

public abstract class gh extends ih {
    public gh() {
        super(EvaluableType.COLOR);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        Object objM279constructorimpl;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objE = ArrayFunctionsKt.e(f(), list);
        Object obj = null;
        k81 k81Var = objE instanceof k81 ? (k81) objE : null;
        if (k81Var != null) {
            return k81Var;
        }
        String str = objE instanceof String ? (String) objE : null;
        if (str != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(k81.c(k81.b.b(str)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(c.a(th));
            }
            obj = (k81) (Result.m285isFailureimpl(objM279constructorimpl) ? null : objM279constructorimpl);
        }
        return obj == null ? list.get(2) : obj;
    }
}
