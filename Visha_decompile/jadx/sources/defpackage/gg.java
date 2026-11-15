package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Result;
import kotlin.c;
import org.json.JSONException;

public abstract class gg extends lg {
    public gg() {
        super(EvaluableType.COLOR);
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) throws JSONException {
        Object objM279constructorimpl;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objC = ArrayFunctionsKt.c(f(), list, m());
        if (objC instanceof k81) {
            return objC;
        }
        if (!(objC instanceof String)) {
            ArrayFunctionsKt.j(f(), list, g(), objC, m());
            return zfb.a;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(k81.c(k81.b.b((String) objC)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) == null) {
            return objM279constructorimpl;
        }
        ArrayFunctionsKt.i(f(), list, "Unable to convert value to Color, expected format #AARRGGBB.", false, 8, null);
        throw new KotlinNothingValueException();
    }
}
