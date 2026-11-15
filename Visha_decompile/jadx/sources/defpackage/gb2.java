package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div.evaluable.Function;
import com.yandex.div.evaluable.a;
import com.yandex.div.evaluable.function.DictFunctionsKt;
import java.util.List;

public abstract class gb2 extends Function {
    public final List c;
    public final EvaluableType d;
    public final boolean e;

    public gb2() {
        EvaluableType evaluableType = EvaluableType.NUMBER;
        this.c = y71.n(new f84(evaluableType, false, 2, null), new f84(EvaluableType.DICT, false, 2, null), new f84(EvaluableType.STRING, true));
        this.d = evaluableType;
    }

    @Override
    public Object c(pd3 pd3Var, a aVar, List list) {
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object obj = list.get(0);
        y45.h(obj, "null cannot be cast to non-null type kotlin.Double");
        Double d = (Double) obj;
        d.doubleValue();
        Object objC = DictFunctionsKt.c(list, d, false, 4, null);
        Number number = objC instanceof Number ? (Number) objC : null;
        return number != null ? Double.valueOf(number.doubleValue()) : d;
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
