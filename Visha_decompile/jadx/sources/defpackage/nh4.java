package defpackage;

import com.yandex.div.evaluable.EvaluableExceptionKt;
import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class nh4 extends Function {
    public final boolean c;
    public final List d = x71.e(new f84(EvaluableType.STRING, false, 2, null));

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.String");
        Object obj2 = pd3Var.b().get((String) obj);
        if (obj2 != null) {
            return obj2;
        }
        EvaluableExceptionKt.g(f(), list, "Missing value.", null, 8, null);
        throw new KotlinNothingValueException();
    }

    @Override
    public List d() {
        return this.d;
    }

    @Override
    public boolean i() {
        return this.c;
    }
}
