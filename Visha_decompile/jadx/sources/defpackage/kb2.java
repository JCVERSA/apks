package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;
import kotlin.KotlinNothingValueException;

public abstract class kb2 extends Function {
    public final boolean c;
    public final List d;
    public final EvaluableType e;
    public final boolean f;

    public kb2() {
        f84 f84Var = new f84(EvaluableType.DICT, false, 2, null);
        EvaluableType evaluableType = EvaluableType.STRING;
        this.d = y71.n(f84Var, new f84(evaluableType, true));
        this.e = evaluableType;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objA = DictFunctionsKt.a(f(), list, m());
        String str = objA instanceof String ? (String) objA : null;
        if (str != null) {
            return str;
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
