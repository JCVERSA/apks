package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class hh extends ih {
    public final List f;

    public hh() {
        super(EvaluableType.COLOR);
        this.f = y71.n(new f84(EvaluableType.ARRAY, false, 2, null), new f84(EvaluableType.INTEGER, false, 2, null), new f84(EvaluableType.STRING, false, 2, null));
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objE = ArrayFunctionsKt.e(f(), list);
        k81 k81VarF = ArrayFunctionsKt.f(objE instanceof String ? (String) objE : null);
        if (k81VarF == null) {
            Object obj = list.get(2);
            y45.h(obj, "null cannot be cast to non-null type kotlin.String");
            k81VarF = ArrayFunctionsKt.f((String) obj);
            if (k81VarF == null) {
                ArrayFunctionsKt.i(f(), list, "Unable to convert value to Color, expected format #AARRGGBB.", false, 8, null);
                throw new KotlinNothingValueException();
            }
        }
        return k81VarF;
    }

    @Override
    public List d() {
        return this.f;
    }
}
