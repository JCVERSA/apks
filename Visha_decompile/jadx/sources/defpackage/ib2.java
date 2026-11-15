package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.ArrayFunctionsKt;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class ib2 extends Function {
    public final List c;
    public final EvaluableType d;
    public final boolean e;

    public ib2() {
        EvaluableType evaluableType = EvaluableType.STRING;
        this.c = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.DICT, false, 2, null), new f84(evaluableType, true));
        this.d = EvaluableType.URL;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        Object objC = DictFunctionsKt.c(list, str, false, 4, null);
        String strG = ArrayFunctionsKt.g(objC instanceof String ? (String) objC : null);
        if (strG != null || (strG = ArrayFunctionsKt.g(str)) != null) {
            return vib.a(strG);
        }
        DictFunctionsKt.d(f(), list, "Unable to convert value to Url.");
        throw new KotlinNothingValueException();
    }

    @Override
    public List d() {
        return this.c;
    }

    @Override
    public EvaluableType g() {
        return this.d;
    }

    @Override
    public boolean i() {
        return this.e;
    }
}
