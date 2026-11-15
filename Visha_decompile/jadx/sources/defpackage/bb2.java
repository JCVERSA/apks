package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class bb2 extends Function {
    public final boolean c;
    public final List d = y71.n(new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
    public final EvaluableType e = EvaluableType.NUMBER;
    public final boolean f;

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objA = DictFunctionsKt.a(f(), list, m());
        Number number = objA instanceof Number ? (Number) objA : null;
        if (number != null) {
            return Double.valueOf(number.doubleValue());
        }
        DictFunctionsKt.g(f(), list, g(), objA, m());
        throw new KotlinNothingValueException();
    }

    @Override
    public List d() {
        return this.d;
    }

    @Override
    public EvaluableType g() {
        return this.e;
    }

    @Override
    public boolean i() {
        return this.f;
    }

    public boolean m() {
        return this.c;
    }
}
